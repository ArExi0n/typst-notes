---
title: "Rust - When To Leak Memory"
source: "https://www.youtube.com/watch?v=jio4aP6KoYY"
author:
  - "[[Code to the Moon]]"
published: 2026-06-15
created: 2026-06-15
description: "Sometimes developers put data in an Arc even though it is expected to be deallocated at the very end of the program. This makes the reference count maintained by Arc completely redundant. In this vide"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=jio4aP6KoYY)

Sometimes developers put data in an Arc even though it is expected to be deallocated at the very end of the program. This makes the reference count maintained by Arc completely redundant. In this video we talk about 3 alternatives to using \`Arc\` in situations where you need to capture an immutable reference to a piece of data in closures passed to std::thread::spawn or the future passed to tokio::spawn.  
  
Keyboard: Glove80 - https://bit.ly/3EKyn7X  
Camera 1: Canon EOS R8 https://amzn.to/4gSpivt  
Camera 2: Canon EOS R5 https://amzn.to/3CCrxzl  
Monitor: Dell U4914DW 49in https://amzn.to/3MJV1jx  
Microphone: Sennheiser 416 https://amzn.to/3Fkti60  
Microphone Interface: Focusrite Clarett+ 2Pre https://amzn.to/3J5dy7S  
Tripod: JOBY GorillaPod 5K https://amzn.to/3JaPxMA  
Mouse: Razer DeathAdder Elite https://amzn.to/4tu57ul  
Computer: Mac Studio M4 Max https://amzn.to/44RWIWK  
Lens: Canon RF35mm F1.8 https://amzn.to/49XHWkT  
Caffeine: High Brew Cold Brew Coffee https://amzn.to/3hXyx0q  
More Caffeine: Monster Energy Juice, Pipeline Punch https://amzn.to/3Czmfox

## Transcript

**0:00** · This is my favorite Rust antiattern. Not because it's always a bad idea, but because it's often used in cases where it's not necessary. We're creating some shared data here that we want to send to a handful of other threads. We want to send immutable references to these other threads, right? So, intuitively, a lot of people think, oh, I need to put my shared data in an arc, an atomic reference counting smart pointer. In some cases, that is necessary depending on what you're doing. If you're not familiar with ARC, again, atomic reference counting smartpointer. What it does is you put some data in there and you can make clones of that pointer.

**0:34** · Every time you make a clone, the reference count is incremented. Every time a clone is deallocated, reference count is decremented. When the reference count gets to zero, that data is completely deallocated. Right? What a lot of people do in this scenario is they put their data in an arc thinking that they need the arc to ensure thread safety for their data. The punch line is the shared data as written here is already thread safe. it implements the send and sync traits. This is a unit struck, so of course it's red safe, right?

**1:03** · But even if it had a few fields, as long as those fields implement the send and sync traits, shared data will implement send and sync. And it would be perfectly safe to send shared references to other threads. There are a lot of scenarios where this is a good option. I want to put my data in an arc. So immediately when all the threads are done with it, I can deallocate my data.

**1:23** · But if I'm expecting my data to last for the entire duration of the program, what is this reference count doing? It's incrementing every time I clone the pointer, decrementing every time a thread finishes. I'm going to deallocate the data when the count gets to zero.

**1:36** · But I already knew I was going to deallocate the data at the end of the program. So what good is this reference count, right? So you can do this without the arc. But it's not as simple as just removing the arc. If I take away the arc and I try to reference shared data in the closure that I pass to standard thread spawn, I get this error. closure may outlive the current function but it borrows shared data which is owned by the current function may outlive borrowed value shared data what's going on here so if I look at spawn if I look at the implementation I can see that it's expecting a closure that has a

**2:06** · static lifetime shared data does not have a static lifetime so that's why we're running into this issue not because shared data is not send and sync right so arc is one way to solve this issue but it's not doing it by making things thread safe thing things were thread safe already as long as I was sending immutable references to those threads. What it's actually doing is solving the lifetime issue. Instead of using the shared data in main, I'm actually giving ownership of shared data to each of the threads. So they collectively all own shared data.

**2:37** · Each of them has a reference counting smart pointer and so they can be sure that the data is still going to be around when they want to reference it. It's interesting because adding that reference count actually introduces a thread safety issue or a potential thread safety issue. If you have that reference count, you need to make sure you're incrementing it and decrementing it in a way that's thread safe. Luckily, ARC does that because it uses atomics.

**3:02** · The point is the thread safety issue did not exist to begin with. We had a lifetime issue that we resolved using ARC and cloning that arc and moving that to the closure that we passed to standard thread spawn. By the way, this all the concepts I'm going to talk about in this video apply to Tokyo Spawn as well. In this example, we're making operating system threads. The same concept applies if we're making Tokyo tasks. Tokyo Spawn takes a future instead of a closure, but the idea is the same. The the future has a static lifetime, and we have to do something about that.

**3:34** · Again, ARC is actually a great choice here if you want to make sure that your shared data is deallocated as soon as possible and you know that that time is going to come long before the end of the program potentially. But if you already know from the get- go that your shared data is not going to be deallocated until the end of the program, this reference count is not going to help us. And I'm going to give you three alternative approaches for the case where our shared data needs to last for the entire runtime of the program. Oh, and by the way, the third one is the craziest one and it's the most likely to make people upset.

**4:05** · Okay, the first solution that's going to be a good fit for a lot of use cases is using a static variable and putting your shared data in a lazy lock. Because lazy lock new is const, I can assign that to a static variable, right? And inside the closure that I pass to new, I can specify my initialization logic for my shared data. This is really nice because I can just reference shared data anywhere I want. You can see the code got a lot simpler.

**4:33** · I'm just referencing my shared data from inside the closures that I pass to spawn. Shared data has a static lifetime which appeases the borrow checker in this scenario. But there are downsides to this approach.

**4:46** · Number one, static variables. So if you store something in a static variable and that thing implements the drop trait, it has some special logic that it needs to run before it gets deallocated. that logic just won't get run. That's just how static variables are. So if your shared data is something like a database connection or an HTTP connection where there's some critical logic that needs to be run to clean up before it gets deallocated, this might not be the right approach. The other downside is that lazy lock incurs overhead.

**5:13** · What's actually going on under the hood here is that the first time your lazy lock, your share data is read, it's actually doing that initialization that's completely abstracted away from you as the developer. We don't know where that's actually happening down here, but it is happening the first time. And then every time that data is read, Lazy Lock needs to look at its bookkeeping to see, hey, did I initialize this already? If so, just read the value. If not, initialize it. But honestly, for most use cases, that performance overhead is going to be ultra ultra negligible.

**5:45** · So, this is a good use case to consider. Oh, the other the third downside to this use case is that it is a static variable and it's going to be available throughout the module. There are probably good reasons why you might want to isolate access to that data to a specific function. And this is basically polluting the module's namespace. You might not want that. That is one other downside to this approach.

**6:09** · The second approach that might be preferable to using arc scope. So the standard thread module has a function scope that allows you to define a scope in which spawn threads will run. So at the end of the scope here, it's going to automatically join all the threads. The reason that helps us is because when we actually spawn the threads, the closure that we pass to that spawn method no longer needs to have a static lifetime because it knows exactly when that closure is no longer going to be needed.

**6:40** · For that reason, we can capture a shared reference to shared data directly in that closure that we pass to spawn. The reason is because the compiler knows that the lifetime of shared data up here is longer than the lifetime of this closure because it knows this closure doesn't need to last longer than um this outer closure here. Right? So, this is another great approach. It cleans up the code. Um there is if you look at the implementation for scope there is a little bit of bookkeeping here.

**7:09** · I don't know exactly what the performance overhead incurred by this is but it is not a zeroost abstraction. There is an arc under the hood doing some stuff. So the performance benefit might not be substantial but from a code cleanliness perspective I think this is vastly preferable to using an arc. One other downside to this approach is that you might not necessarily be spawning threads in one kind of constrained part of your program. you might be spawning threads in very disperate areas of your program.

**7:37** · In which case, you would have to like put all your business logic in this closure that you pass a scope and then pass around this this scope parameter everywhere you need to spawn threads. In those scenarios, this might not be the best approach. What I'm showing you here is specific to standard thread and spawning operating system threads. There is also a similar option if you're using Tokyo and you're spawning Tokyo tasks. So there is a crate called async scoped that offers something called the Tokyo scope scope and block.

**8:05** · It creates a similar environment where all Tokyo tasks spawned in that scope are guaranteed to be joined at the end of this block here.

**8:14** · So for that reason we can reference our shared data directly in the closure sorry directly in the future that we pass to S.pawn. In this case that's going to do a Tokyo spawn under the hood. For this particular solution, you do need to use a thirdparty crate if you're using Tokyo. All right, the last and no doubt the most controversial alternate approach to using ARC in this scenario, and that is deliberately leaking memory. Yes, you heard that right. We're deliberately leaking memory. Now, I want to caveat this right off the bat.

**8:45** · This is not going to be a good idea in a few scenarios. Similar to the lazy lock static approach, if your shared data implements the drop trait and it has some cleanup logic that it needs to run before it gets deallocated, this is not your approach. The drop the cleanup logic is going to be completely ignored. What we're actually doing is we're creating a box. And if you're not familiar, box is probably one of the simplest smart pointers. It just heap allocates the contain data instead of stack allocating it. There's a lot of use cases for that, but we're immediately getting rid of the box.

**9:15** · So, we're creating the box, putting our shared data in the box, and then box has a function called leak. Leak deliberately leaks the memory contained in the box. Leak actually returns a mutable reference to the contained data.

**9:28** · Um, we actually need a immutable reference. So, we're casting to an immutable reference. If we actually took that mutable reference and tried to pass it to our spawns, it would not be happy because we have multiple mutable references. So, we just take an immutable reference. it has a static lifetime. So even though the shared data is a local variable in main, it has a static lifetime that appeases the borrow checker when I capture my shared data in the closure that I pass to the spawn function.

**9:57** · To remind you, spawn expects the closure that you pass to it to have a static lifetime. So this solves the issue. There are probably a lot of folks who will advocate for the lazy lock approach even in performance critical cases just for the safety benefits.

**10:12** · There's a case to be made there, but this is an approach to be aware of. It's it's a nice tool to have in your tool belt when you need it for performance critical cases. If you absolutely hate this approach, if this approach scares you, please let me know down in the comments. If you use this approach, I also want to hear about that. I I want to hear more about the criteria you use to decide that something like this is okay. That's interesting to me. Those are three approaches that I prefer to using Arc when the shared data is expected to last for the entire runtime of the program.

**10:40** · I would love to hear down in the comments which of these approaches is your favorite. Which would you avoid at all costs? Or maybe do you even prefer the original Arc approach even for data that lasts for the entire runtime of the program? Would love to hear about that. If you like this video, definitely check out this other video on Rust procedural macros. There's a lot of tutorials that make them look more complicated than they need to be.

**11:02** · They're not that bad. They are very powerful. Definitely check out that video. Thank you all for watching and we'll see you in the next one.