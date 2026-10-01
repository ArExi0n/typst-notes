---
title: "Truly Understand Probability"
source: "https://www.youtube.com/watch?v=ZdT_H0KHhFI"
author:
  - "[[snsus]]"
published: 2026-07-10
created: 2026-07-13
description: "Ready to truly understand Probability? You might have heard that mathematics is based on Set Theory. That's because pretty much any mathematical object can be represented as a set -- including random"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ZdT_H0KHhFI)

Ready to truly understand Probability? You might have heard that mathematics is based on Set Theory. That's because pretty much any mathematical object can be represented as a set -- including random events. Measuring a set = measuring it's volume.  
  
📜 \*References\*  
Videos in the Intro:  
https://www.magnific.com/free-video/hurricane-from-space\_3730765  
https://www.magnific.com/de/gratis-video/nacht-aeransicht-komplexen-autobahnkreuzung\_3696059  
https://www.magnific.com/free-video/stock-market-data-display\_3544805  
https://pixabay.com/videos/robot-human-office-future-rubber-88219/  
https://pixabay.com/videos/circuit-chip-motherboard-processor-311617/  
https://www.magnific.com/free-video/woman-choosing-what-eat\_3255142  
  
❤️ \*Credits\*  
Music:  
Jon Björk - From the Dust  
LEMMiNO - Cipher: https://www.youtube.com/watch?v=b0q5PR1xpA0 (CC BY-SA 4.0)  
  
🎬 \*Making-of\*  
I code the Animations in Python, especially by using this amazing library: https://www.manim.community/ (initially developed by https://youtube.com/c/3blue1brown)  
You can find my code here:  
https://github.com/snsus/youtube  
https://gitlab.com/snsus-code/youtube  
  
🫂 \*Social\*  
Mastodon: https://mastodon.social/@snsus  
Bluesky: https://bsky.app/profile/snsus.bsky.social  
Instagram: https://instagram.com/snsus.qed  
  
☕ \*You would support me?\*  
https://ko-fi.com/snsus  
  
00:00 Probability  
00:26 Randomness  
02:02 Outcomes  
03:36 Events  
07:07 Measure Theory  
12:35 Distribution  
14:29 Discrete Case  
16:57 Continous Case  
22:28 How to model  
  
#science #math #education #stem #learning #probability #random #randomness #outcome #event #measure #measuretheory #distribution #discrete #continuous #probabilitytheory

## Transcript

### Probability

Probability is a concept we all rely on whether we notice it or not. We don't just use it to predict the weather, the traffic, or markets. It also drives AI, rules quantum mechanics, and influences decisions we make every day. We use it to save lives and to end them. But what exactly is it? Well, the short answer, it's a volume. Let me explain. First of all, probability is our attempt to quantify randomness. to measure it with numbers, so to speak.

### Randomness

Unlike probability, however, mathematics has no answer to the question of what randomness actually is. While we humans have a certain sense of it, whether it truly exists or whether everything is predetermined and we simply don't know enough is still being debated today. But the good news is that mathematics doesn't really care because its concept of probability works in both cases. We interpret it as a measure of certainty that a random event will occur.

And for the magnitude of this certainty, it doesn't matter whether the event is truly random or whether we simply don't know enough about it at this point. For historical reasons, we measure the certainty with numbers between zero and 100%. The smaller the number, the less confidence we have that the event will occur and vice versa. 0% is supposed to mean that the event will not occur at all, meaning it's impossible, and 100% that it will definitely occur.

So, with that being said, let's build it. At first, let's get rid of that ugly percentage sign. It literally just means divide this number by 100.

**1:42** · What we want now is basically an oracle.

**1:45** · That is a mathematical function that takes a random event as input, measures it in some way, and outputs a number between 0 and one, which we then interpret as this measure of certainty.

**1:57** · And we'll call this function the probability measure. But what does such a function actually look like? Well, when we conduct a random experiment, we first need to know what the potential outcomes might be. Taking the classic example of flipping a coin, it could land on heads or tails. You might argue that the coin could also land on its edge and you would be absolutely right.

### Outcomes

**2:20** · But our coin could also be hit by a meteorite while we are tossing it. We can imagine countless other scenarios.

**2:26** · But does it really make sense to include them all? No. We are trying to build a model here and a model will never be able to perfectly reflect reality. good enough is totally sufficient for most practical purposes. So we usually leave out such extreme cases. However, that doesn't mean mathematics can't handle an infinite number of outcomes. In fact, mathematics deals primarily with random experiments that involve an infinite number of outcomes. But these have at least some type of pattern.

**2:55** · For example, on how many planets in the universe has or will life likely evolve? We could be the only ones, but there could also be two or three or perhaps even an infinite number. So, we have infinitely many outcomes, but they are all natural numbers. We are familiar with those. Or how long will I be stuck in the next traffic jam here? Even more outcomes are possible. Maybe I will wait 0 minutes, maybe 3.14 minutes, or maybe forever.

**3:26** · But these are all real numbers. We are familiar with those too. We'll see that we can also assign probabilities to an infinite number of scenarios.

### Events

**3:36** · All right. After we've identified the potential outcomes, we now need to properly define possible events. Even though they might sound similar at first, outcomes and events are different things. Imagine we rolling a dieice. So these six outcomes are possible. What probabilities might we be interested in for this experiment? Well, for example, the probability of rolling a four. Here we are referring to a single outcome.

**4:03** · But we might also be interested in how likely it is to roll an odd number. In this case, we have to consider multiple outcomes. In short, we don't want to determine the probability of a single outcome, but rather of an event, which can refer to a single outcome, but also to multiple ones. So since P is a mathematical function, we have to describe events mathematically as well.

**4:27** · We can't just throw in a sentence. Nor can we simply put the corresponding outcome into the function because that's just an image I created. What is the probability of an image supposed to be?

**4:38** · H how about numbers instead? They are mathematical objects after all. And we're constantly feeding numbers into functions. That's not a bad idea, but for the event of rolling an odd number, we would have to put in three numbers.

**4:53** · However, a mathematical function cannot be both one and multi-dimensional at the same time. Mathematicians have instead opted for a much simpler solution.

**5:03** · Perhaps the simplest object mathematics has to offer, a set. Let's start by putting all the outcomes into a set.

**5:10** · This set is then called the sample space and is typically denoted by omega. An event is then simply a subset of omega.

**5:18** · So the event of rolling an odd number is the subset that contains these three outcomes. And the event of rolling a four is the set that contains only this outcome. So if an event is a subset of omega, we might now ask ourselves which events are even possible. That is what subsets does omega actually have? Well, for one, there are six subsets with only one element. These are so-called elementary events. They contain only one outcome.

**5:46** · Then we can form a total of 15 different subsets containing two outcomes, 20 different subsets with three outcomes, another 15 with four, six with five, and only one with six outcomes. That is omega itself. Oh, and there's also a subset with zero elements, the empty set, which as we know is a subset of any set. If we now put all of these into a separate set, we get what's called the event space. This set contains all literally all events we can think of when rolling a dieice.

**6:20** · Rolling a four, it's in there. Rolling an odd number, it's in there. Rolling a number less than five, which is also an even number. For this, we have to intersect these two events, and the result is also included. Rolling any number, it's in there. rolling a seven that's in there too. With the empty set, we now have the ability to describe impossible events. Now, the set that generates all subsets of omega is the so-called power set of omega. All possible events are in there.

**6:50** · Meaning, we now know what our probability measure should look like. That is a function that takes an event from the par set as input, measures this subset in some way, and returns a number between zero and one. The question now is how do we measure a set? And with that, welcome to measure theory. A pretty modern branch of mathematics devoted entirely to this question. A measure is a mathematical function which is very abstract.

### Measure Theory

**7:18** · But to truly understand probability, we have to go through this. But don't worry, this is a census video. So imagine someone asks you to measure this line. What would you intuitively do? you would probably measure its length, even if the line was a little curved. For a square, you might measure its area and for a cube, its volume. And that's exactly what the mathematical measure does.

**7:46** · Now, you might be thinking, okay, those are geometric objects, but we want to know how to measure a set. Well, these objects actually are sets. A straight line, for example, is the set of all real numbers between some numbers a and b. In other words, simply the interval from a to b. We can represent a curved line using a function. And a function is also just a set of points. I've made a detailed video on this topic.

**8:14** · A square is this set of points or a two-dimensional interval. And a cube is simply a three-dimensional interval. So these objects are sets. And what the measure does is in a sense assign it its size or content which mathematicians generally refer to as volume. For certain sets we get the traditional volume.

**8:39** · For other ones a two-dimensional volume which we call area or a one-dimensional volume which we call length. And yes when measuring an event which is also a set we would obtain its volume which we then simply call probability.

**8:56** · But our probability measure must first qualify as a measure and for that it must satisfy three rules. First of all, what we want to measure must be measurable. In mathematical terms, we need a measurable space. Let's take your personal space, which might be a room.

**9:14** · It has a floor, four walls, and a ceiling. Let's call this space Omega.

**9:21** · Now imagine you would like to paint this wall and you want to know how much paint you will need. So what you would have to do is to measure the area of that wall.

**9:30** · Meaning you must be able to assign a two-dimensional volume to a subset of omega. If for example you wanted to paint this wall and the ceiling, you would need to be able to assign a volume to this subset. This is what mathematicians mean by measurable. A space is measurable if we can assign a volume to its individual parts or subsets specifically to all subsets. Now we already know how to obtain all subsets of omega. We just take the power set. And our measure must be able to assign a volume to all of them.

**10:02** · In other words, what we feed into this measure function are subsets of omega. And what should the function then return? Well, the volume which is a number and negative numbers don't make sense here.

**10:18** · That's the second rule. Now, in measure theory, it's also common to allow for an infinitely large volume. But what's important to us here is simply that we need positive numbers and only if we measure well nothing, we get a volume of zero. And the last rule requires that we can add separate volumes in a reasonable way. So imagine you want to paint this subset. You will need to measure the total area. How would you do that?

**10:44** · Well, you would probably measure the area of the ceiling and the wall separately and then add those numbers together. And that's exactly what a measure must be able to do. We can think of this composite set as the union of disjoint parts. And the total volume is then simply the sum of the separate volumes.

**11:05** · So these are the three rules that our probability measure must satisfy.

**11:11** · With the example of rolling dice, we've already satisfied the measurability condition. We don't want to measure outcomes, but rather events. So, we are ready to assign volumes to all subsets of omega. The second rule also fits quite well. We want numbers between 0ero and one. And these are not negative. But what is now required of us is that we assign a probability of zero to the empty set or the impossible event. But that's perfect. That's exactly what we wanted.

**11:41** · What we also wanted, however, is to assign a probability of one to a certain event. That is one that will definitely happen. The certain event when rolling a die is that any number between 1 and six will be rolled. That is the event omega. Its probability should be one. And we allowed to do so because we are not breaking any rules of the measure. And finally, we are required to be able to add probabilities. In other words, the probability of rolling a one or a two is the sum of the individual probabilities.

**12:16** · Now, it's hard to judge whether this really makes sense for our probability model. So far, the rules have required us to do things we wanted to do anyway.

**12:24** · So perhaps we should trust this rule as well. By the way, that's the right decision because when we compare such models with reality, we get consistent results.

**12:34** · All right, now that we have our measure, there's just one final question left.

### Distribution

**12:39** · What are the individual probabilities? I mean, we know that the probability of an impossible event is zero and that of a certain event is one. But what about all the others? Well, omega is the union of individual elementary events and according to rule three, the sum of their probabilities should be one.

**12:59** · However, this is an equation with six unknowns which we can solve without additional information. If we knew, however, how the probability is distributed among these individual elementary events, that is how heavily each elementary event is weighted, then we could determine the probabilities of all events. So since probability is a volume, let's imagine the individual elementary events as ropes or lines and the probability of an event as its one-dimensional volume or the length of the corresponding line.

**13:29** · Now these lengths can be different depending on how we weight each event. Literally, let's imagine we are attaching individual weights or masses to the ropes. The greater the mass, the more the line is stretched. The sum of all lengths must equal one. We have to keep that in mind. Now, the actual distribution of those masses depends on the experiment. When rolling a die, for example, we can use symmetry as a basis for our reasoning. It doesn't really make sense to favor a particular side.

**14:02** · So, each side is assigned an equal weight. So, each line is stretched to a length or probability of 16. Of course, we might argue that depending on how the dice is manufactured, its center of mass might not be exactly in the center of the dice. And it also depends on how fast we spin it and so on and so forth.

**14:21** · But let's remind ourselves that we are developing a model. And for most cases of rolling dice, this is good enough. We can now imagine that the distribution of the individual weights is handled by a function which we call the probability mass function or PMF for short or even shorter lowerase P. Now it's important to not mistake this for our probability measure capital P.

### Discrete Case

**14:45** · The domain of the PMF is usually omega meaning we assign individual weights directly to individual outcomes. So we could assign something like 2 kilograms to an outcome. The more weight we assign to an outcome, the greater the probability of the corresponding elementary event becomes which is measured by uppercase P. The inputs here are events and the outputs are lengths like 16 of meter.

**15:12** · So those functions are completely different. However, we usually pretend here that mass and length scales by the same amount. So, assigning 16 over kilo to the first outcome will stretch the corresponding elementary event or line to exactly 1 / 6 m. Thus, we can imagine those events to be here. So, we don't have to plot the measure function separately. We can just use the PMF to calculate the probability of any event.

**15:46** · Rolling a one, that's this length.

**15:49** · rolling a one or a four, we just add those two lengths and so on.

**15:55** · Now, when flipping a coin, we can argue with symmetry again. So, we assign half a kilo to each outcome, which stretches each line to half a meter, and thus the probability is a half for each elementary event and one if we add them all up. Now, what about the alien example? Symmetry wouldn't work here. If every length is the same, then infinity \* that length equals infinity, not one.

**16:20** · Here we have to distribute the weights in a different way. Well, some would argue that our planet must be the only one. All the other lengths are zero. But we could also try to run computer simulations and calculations based on laws of physics, chemistry, biology, and so on. Perhaps the calculations then suggest that the probabilities become exponentially smaller or they are concentrated around a certain value and flatten out to the left and right.

**16:46** · And yes, infinitely many lengths can add up to one if the lengths decrease fast enough as calculus teaches us. But what about the waiting time in the traffic jam? Here the outcomes aren't just natural numbers. We also have all the real numbers in between with no gaps. At this point, we experienced the transition from discrete mathematics to continuous mathematics.

### Continous Case

**17:12** · If omega has a finite or at least a countably infinite number of elements, then we call omega discrete. But if omega consists of an infinite number of elements with no gaps in between, we call it continuous. The transition, however, isn't that complicated. So in the discrete case we imagined individual elementary events as lines. When all these lines are combined they form the set omega. The probability of an elementary event is the length of the line.

**17:43** · For composed events we add the corresponding lengths and the sum of all lengths is one. Let's now copy this idea to the continuous case and let's first consider a case where omega is at least bounded. For example, the time interval from 0 to 6 minutes. So we can't be stuck in traffic for more than 6 minutes. Within this time interval though there are infinitely many real numbers and thus infinitely many elementary events or lines without gaps.

**18:13** · Together they form omega that is a rectangle.

**18:18** · Now which events are we fundamentally interested in now? Well, for example, the event of waiting exactly 2 minutes that corresponds to this line or the event of waiting between 2 and 3 minutes that would include all these lines. So events are again subsets of omega specifically sub intervals of omega and the set that generates all sub intervals of omega is called the borell set.

**18:44** · Now they would also be included in the power set of omega but that would be too large for a probability measure. I won't go into the mathematical details right now.

**18:57** · It's enough for us to know that the borell set contains all the subsets we might be interested in including intervals consisting of just a single number. So how do we determine the probability of waiting exactly 2 minutes? Should we as in the discrete case simply measure the length? No, because then we would have to measure an uncountably infinite number of lengths for this event which would add up to a total length or probability of infinity no matter how small we make all the individual lengths.

**19:28** · So what could be finite in a rectangle which consists of an infinite number of lines? Well, the area that's the transition. We no longer measure lengths but rather areas and then interpret these as probabilities.

**19:48** · But that would mean that the probability of waiting exactly 2 minutes corresponds to the area of this line which is zero since a line has no width. And that's the trade-off. Elementary events would have a probability of zero. But honestly, who even cares about how likely it is to be stuck in traffic for exactly 2 minutes?

**20:10** · I mean, we would rather know how likely it is to wait longer than 2 minutes or about 2 minutes, which we can approximate by the probability of waiting between two and 2.1 minutes and so on. All right, just as in the discrete case, let's assign different weights to individual events.

**20:30** · But how do we attach masses to different areas and that smoothly?

**20:36** · Well, let's just blow up omega with a gas. So, first we squish omega down. So, the heights are all zero. And now we are injecting a gas at one or more specific points where the probabilities should be higher. So, we smoothly inflate omega.

**20:53** · And as soon as it has a total area of one, we pause time. At that exact moment there are more mass particles in this region than say here because we froze the flow of gas. In other words, the density here is lower than at the injection point and accordingly the heights are lower here. We can therefore correlate the individual heights to the densities present at those respective regions at that moment.

**21:19** · And what we obtain is the so-called probability density function or PDF for short or even shorter lowerase P again. So this is like the mass function only this time it is continuous and we don't think of individual weights anymore but rather densities. Now just like in the discrete case the individual density values the y values can also be greater than one because these are densities not probabilities.

**21:50** · Unlike the discrete case, however, this is usually the case.

**21:55** · Meaning, we don't scale densities and probabilities by the same amount this time. And we actually don't have to because the probabilities of events are areas this time, which we can calculate using integrals. And remember the area of a line that is the integral from a to a is zero.

**22:15** · And now we also see that we can extend this to infinity. The total area of omega can still be one if the curve flattens out quickly enough. Calculus teaches us that as well. So there you have it. Whenever you conduct a random experiment, properly define the sample space. If it's discrete, choose the PMF that fits your experiment. If it's continuous, choose the right PDF. Your events will then be subsets of your sample space which you can imagine as lines or 2D shapes.

### How to model

**22:47** · Measuring their probability is measuring their volumes.