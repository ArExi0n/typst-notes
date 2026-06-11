---
title: "I made MacOS feel like Linux"
source: "https://www.youtube.com/watch?v=a7ve8kl4aK4"
author:
  - "[[foci]]"
published: 2026-06-02
created: 2026-06-08
description: "Add Proton VPN to your privacy stack:https://protonvpn.com/fociMy favorite keyboard (affiliate link): https://amzn.to/48rIcqDJoin the Discord! https://discord.gg/2yUKt8Ew8R"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=a7ve8kl4aK4)

Add Proton VPN to your privacy stack:  
https://protonvpn.com/foci  
My favorite keyboard (affiliate link): https://amzn.to/48rIcqD  
Join the Discord! https://discord.gg/2yUKt8Ew8R

## Transcript

**0:00** · I love Linux and what I really love is tiling window managers. See, normally you use floating windows. You open a new window and it stacks on top. But a tiling VM well tiles them. So you don't have to spend time moving windows around with your mouse. Why? Speed. But I still use Final Cut to edit all of my videos.

**0:19** · And moving to Mac OS from my Neri setup is rough. So I spend a few days trying to make Mac OS feel and work like Linux.

**0:28** · basically cosplaying Linux on Mac. But as you will see soon, it wasn't a smooth ride. Okay, so what do I actually want?

**0:36** · I want a keyboard-driven workflow with a lot of smart key bindings. I want a package managers for installing and maintaining stuff easily. I want a tiling VM, obviously. I want a custom menu bar, a custom terminal emulator, and to use the same open- source apps that I use on Linux. Attempt one. I first searched around for the best tiling VM for Mac and I found that Yabai and Aerospace were the most popular. I went with Aerospace, but of course Aerospace was just one piece of the puzzle.

**1:06** · So I made a brand new user and the first thing that I installed was Homebrew, which is a package manager.

**1:13** · Basically, it lets you install, remove, and update apps directly from the terminal. So no need for browsing websites, stragging around DMG files, and so on. It's really good. And to install it, you just need to copy this command into the terminal and you're all set. I then browsed around for a nice wallpaper. I then hopped into the settings and toggle dark mode on and mess around with the appearance settings.

**1:37** · I then removed these widgets and went to this website, uploaded my wallpaper, and got this custom color palette, which I'll use when we get to the config files. I then got rid of the dock and bar after which I installed hyper key which essentially turns your caps lock key into a brand new well hyper key. As you can see here when I press the caps lock key now it triggers these modifier keys which means I can bind all kinds of stuff to caps lock and a particular key. Very nice.

**2:07** · Now aerospace I went to the GitHub page and copied this command. I then went into the settings and disabled a few things just following the official documentation. I then installed fast fetch yasi which is really cool helium which is the browser that I use on Linux since I can't really get sent to play well with neri. So I just installed a bunch of open source apps that I use on Linux. We'll get to those later.

**2:33** · Next was janky borders which is a customizable border around focused windows just like on neri and it worked well and I even customized the dot files with my new color palette then sketchy bar. Oh sketchy bar that's where it went downhill and first my screen recording decided to stop without telling me.

**2:56** · Although I spent hours trying to get Aerospace, Janky Borders, and Sketchy Bar to work well together, but no. Or I should say Aerospace works fine, but I didn't really like the tiling. The animations were kind of slow for some reason. Not what I want. I tried to fix it by messing around with the config files, but with no lock. But what was even more annoying was that I just couldn't get Sketchy Bar to work properly. I mean, the closest I got was just the bar with a clock.

**3:26** · Hardly a cool customizable bar. And that's where I descended into the dot file hell hole.

**3:35** · See, until now, I'd been a good boy. I just followed the different official documentations. But after hours, I reached the point where I just wanted it to work. So, I turned to YouTube and looked at some pretty cool setups. And what do you know? They all share their dot files. So, I went on a copy and paste rampage. Did I get it to work? No.

**3:58** · Nothing worked. And that's where I decided to give up on aerospace. But in the hours after, I found this video, a different VM. H. But before we try that, however, a quick word about ProtonVPN, today's sponsor. I'm still very skeptical about VPN marketing. They're often sold as a magic privacy fix, which just isn't true. A VPN doesn't make you anonymous and it won't solve all of your privacy issues on its own. What it does is to route your traffic through a different server instead of your ISP.

**4:29** · Websites then see the VPN's IP instead of yours, giving you more separation from the sites that you visit, but you're still trusting someone. You're just shifting that trust from your ISP to the VPN provider. That's why the provider matters. I like ProtonVPN because it's open source, so the software can be inspected instead of just taking the word for it. It also has a no locks policy, meaning your activity isn't stored while routing through the servers.

**4:53** · On top of that, it even comes with add-on tracker blocking built-in, and it's really easy to set up across all of your devices: Linux, Windows, Mac OS, iOS, Android, you name it. A VPN isn't a silver bullet, but as one tool in your privacy and self-hosting toolkit, ProtonVPN makes sense. If you want to try it out, you can use my link protonvpn.com/fokai.

**5:16** · Thanks to Prozon for supporting the channel. Now, let's get back. Attempt two. In enterprise automation framework, whatever that means. So, Hammerspoon is this incredibly powerful automation engine and people write spoons, basically lure scripts to extend it.

**5:41** · And PaperVM is one of those spoons and it's a tiling window manager inspired by the PaperVM Gnome extension on Linux. Sounds pretty good, right? But the difference here is that PaperVM arranges windows in columns just like on Ner, which means you can move windows left and right and they just stack vertically with columns and the whole system scrolls horizontally as you add more windows again like Ner. Nice.

**6:09** · So, I installed Hammerspoon, then cloned the PaperVM repository into the spoon's directory. I went to the config file for Hammerspoon and added the PaperVM loader. Then I bound keybind to control it. All command left and right key focuses Windows left and right. All command shift left and right swaps windows around and so on.

**6:30** · So, I started Hammerspoon and opened in the config and it worked. windows tiled and I could move between them with the keybinds that I just mentioned. Exactly what I wanted.

**6:45** · But then I tried to use it for actual work and I ran into the same problems as before. The animations were kind of lacky or at least a bit slow. The real problem was moving windows from one workspace to another. There was just this pretty noticeable delay. I mean, not huge, but definitely not what I wanted. So, same issue as Aerospace, just a different window manager. And at this point, I tried out two different window managers. Both worked technically.

**7:15** · Both were kind of welld designigned, but both had this lag that just made it feel slow to use. And then there was SketchUar again. I thought I should be able to get it to work this time, right? But no. Same problems as before. config errors, weird behavior, and no matter how much I tinkered with it, I just couldn't get it past a basic clock. And at this point, I'd spent actual days trying to get Mac OS to feel like Linux, but with no luck.

**7:45** · So, I took a step back and asked myself a few questions. Do I really need a custom bar? No. Do I actually need a dedicated tiling window manager or just a keyboard-driven efficient way to tile windows? Well, do I even need additional workspaces most of the time? No. So, I first tried the native Mac OS tiling and it's fine, but not perfect. The arrange command is handy though, but still I don't really like the animations.

**8:15** · So, I tried out a few different apps like loop and rectangle, but again, I wasn't quite satisfied. Then I met Raycast, which isn't open source. Damn. And it's subscription-based and pretty AI forward as well. Double damn. Nonetheless, I decided to try out their free tier. And oh my god, it's so good. It's so much more than a spotlight replacement as it basically replaces a good handful of apps. Okay, but how does it handle Windows?

**8:47** · Well, I launch it by pressing command and space and then command comma to get to the settings. And in here we have general extensions, a bunch of silly stuff, and then advanced. And if we go there and scroll down, you can see that we can enable a hyper key. So turning the caps lock into that. Great.

**9:05** · Let's get back to extensions and search for window management. Here I can customize the gap between tiled windows as I do like a bit of padding. And as you can see, you can do a whole lot of stuff in here. But what I have set up is actually quite simple. And I've tried to make the hotkeys as close as possible to my near setup. But when I was customizing these keybinds, I realized something. See, I don't like the Mac animation for switching between workspaces. It's just unnecessarily slow. It does get better if you go to accessibility and enable reduced motion.

**9:37** · But what I realized was that when I work on Linux, it's not really that often that I have multiple windows open in one workspace tiled next to each other. So why would I even need to switch between workspaces when I can just work in a single workspace with different windows?

**9:55** · Mindblowing, I know. So my setup now is actually just using a single workspace like so. Swapping instantly between apps and windows. Let's look at the hotkeys.

**10:05** · are filtered for the ones that I use.

**10:07** · So, hyper W almost maximizes. Why not full? Well, I like to be able to see my wallpaper and otherwise I just feel like it gets a bit crammed. Hyper Sensus 2/3, which is great for reading in Sutterero, for example. Then there's A and D, which moves a window left and right. And as you can see, there's no animation. Nice.

**10:29** · I can maximize with hyper F which is useful for when I work in Final Cut. Oh, and I can also make windows smaller and larger with period and comma. I can move windows between desktops with the hyper key and then left and right arrow keys.

**10:46** · And I can restore a window to the previous size with hyper C. Now, Recast does have actual tiling arranging features, but they are payw walls. So, instead, I use the native Mac features and I have them configured to hyper Zet and X. Okay, that's Windows management.

**11:04** · Let's move to the hotkeys for apps. And I use the numbers 1 through six. So, hyper + one opens and hides sen, two opens and hides obsidian, three is vsodium, four is final cut, five is zotterero, and six is system settings.

**11:22** · This workflow feels pretty damn efficient. And the only time that I actually use another workspace is when I edit with Final Cut. So I just swipe on my trackpad to get there and open final cut. I then hit hiber F for maximize clean. I also have hiber which opens finder and hiber which opens ghosty. So that's how I manage my windows and apps right now. Is it the same as Linux? Not really, but it does feel as efficient as using Neri on my main system.

**11:52** · I'd call that a win. Now, I could end the video here, but I just have to show you some of the great features of Raycast. And everything basically works by setting hotkeys or aliases to different extensions. There are a lot of native extensions, but the community store is filled with cool ones as well. Here are my favorites. Hyper Plus T lets me search files. I can open them.

**12:16** · But if I press command K, you'll see that I can do a bunch of other things with them as well. And it's fully keyboard driven.

**12:26** · There's a clipboard manager, which I open with HyperV again with a bunch of other options. But what's really useful is that I can go into settings and make it so that it doesn't save when I copy from my password manager. You can also make snippets. For now, I just have one for my business email. So when I type two exclamation marks, it pops up. Then there are quick links. So I have option one and two to open my local editing folder and my NAS folder respectively.

**12:54** · I can search with doc go with hyper g and it'll just open it in a new tab in sen and then YouTube. I just press hyper and y and search for whatever. The last extension I want to show you is svgl which is such a timesaver. So, if I'm working on a thumbnail, for example, and need a logo, I can hit Hyperl, search for the logo I want, and boom. It's a really nice feature.

**13:22** · That wraps up my week-l long attempt to make Mac OS feel like Linux. Did I succeed? Not really. I couldn't get the different tiling window managers to work properly. And then there was SketchUar, which I spent hours on, and it just Yeah, I was I'm never getting back. Still, I am actually really happy with my final setup, except for the fact that Raycast is closed source.

**13:48** · And my rule since I started the open source project has been that I'd only use open-source alternative if they were actually as good or indeed better than their closed source counterparts.

**14:01** · Still, if you have any tips and tricks for an open-source workflow on Mac, I'm very interested to hear your thoughts.

**14:08** · Anyway, thank you for watching this admittedly messy video, but if you'd like to see a clean video where I go over everything I have on my Mac, so apps, etc., and how they work, please let me know. Oh, and if you are on Mac and you're looking for good open-source apps, I actually have a dedicated video just about that. Thank you so much for watching, and a special thanks to Yen, Lester, Afraris, Cal, and Justin, as well as the other members of the channel.

**14:37** · You too can become a member of the channel if it's financially responsible of you. Right now, there are two tiers with different perks, but in addition to these, all members are invited to join a VIP channel in the Discord. And thanks again to Proton for sponsoring this video. Remember, you can check out ProtonVPN by going through the link in the description or the pinned comment. Okay, bye.