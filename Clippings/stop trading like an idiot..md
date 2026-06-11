---
title: stop trading like an idiot.
source: https://www.youtube.com/watch?v=BiTqwX-4rNw
author:
  - "[[DeltaTrend Trading]]"
published: 2026-03-08
created: 2026-06-09
description: https://quantpad.ai/waitlistThe convex payoff structure of prop firm accounts makes it possible to extract positive expected value net of challenge and activ...
tags:
  - clippings
  - QuantitativeFinance
  - Quant
---
![](https://www.youtube.com/watch?v=BiTqwX-4rNw)

## Transcript

### Prop Firm Math Reality

**0:00** · If you trade prop firm accounts, this could well be one of the most important videos you watch about trading in general. So, unlike any video you've probably watched about trading, if you're watching people like TJR or ICT, I'm actually going to break down the verifiable mathematical reality of trading prop firm accounts. Now, let me start with this.

**0:15** · There's a very large probability that whatever strategy you're trading, whether you got that from YouTube, from some guru, or you made it up yourself, maybe, there's a very small possibility that if you're trading the assets that are tradeable on these prop firm accounts, these super liquid futures that have tons of eyeballs on them, HFT arbitrageurs trading them, tons of institutions throwing millions of dollars at them every single day, there's a really small chance that you actually are trading a strategy that generates alpha on these assets, right?

### Why Prop Strategies Don’t Need Positive EV

**0:41** · Because they're some of the best priced assets in the world, meaning they're the most some of the most efficient markets in the world because they're so liquid. Now, that being said, when you trade a prop firm, it's not imperative that you have a strategy that generates alpha or even a strategy that has positive expected value in order to have positive net expected value over the entire course of doing a prop firm challenge, getting funded, and then trading the funded account. So, let me explain exactly what that means.

### Prop Firms as Structured Products

**1:04** · If you treat prop firm accounts, the challenge and the funded phase like a structured product, which is what you should do if you want to model them correctly and figure out whether you're actually going to make money on them or lose money on them over a long time before you start throwing money at them, which everybody should be doing, don't just blindly throw money at these accounts not knowing your exact percentage probability of passing, the exact net expected value of you approaching these accounts, or else you're just going to throw your money away for no reason on a sub-optimal strategy. Like, for example, let me just jump ahead for 1 second.

**1:30** · If you're trading some top tick, bottom tick, super high uh RR strategy, like very tight stop loss, very wide take profit with a low win rate, you're trading pretty much the exact mathematical opposite of what you should be trading on these accounts in order to take advantage of the convex payoff structure. What do I mean when I say convex payoff structure? What I mean is that your downside is capped. The losses that you take on a prop firm account challenge are not realized. If you lose $3,000 on your prop firm account, you blow the account, you didn't lose 3,000 actual USD.

### Convex Payoff

**1:58** · You lost the sum total of all the challenge fees that you paid, which could just be in the case of a Topstep 50K account, which is what I model in this video, $49, maybe if you passed in your first try, and then your activation fee. So, you didn't lose the $3,000, you just lost however much whatever your sunken cost is into passing and then activating the account to get to the point where you are. On the other hand, if you win $3,000, that win is actually realized. You can take a payout.

**2:23** · That's what we call a convex payoff structure, like a call option, for example, where your loss is capped at whatever you paid for the call option, but your winnings are theoretically unlimited, and the amount that you're winning accelerates as price moves in your favor. So, obviously, this is an optimization problem, making the maximum amount of money that we can in this weird convex payoff structure environment that we can solve with simulation, but in this case, we're going to use simulation and just some toy strategies to get an idea not of the exact strategy that we should be trading, but of the general characteristics of the risk geometry of

**2:52** · the strategy that we should deploy to maximize our chances of passing and making the most money possible on a prop firm account challenge. Okay, so, let's get into it. Let's start talking about prop firm risk geometry. And when I say risk geometry, I'm just talking about something very basic here, okay? We're just going to talk about the win rate and the risk to reward of the strategy.

### Risk Geometry Model

**3:08** · How frequently you're winning and then the geometry of how tight your stop loss is versus your take profit, okay? This is a really simple way of characterizing a strategy and the way that it behaves, and every single strategy that we're going to look at, these are toy strategies, they're all going to have zero expected value per trade. That means that in the real world, if these strategies that we're simulating the equity curves for were actually traded over a large number of trades, they would neither make nor lose money. They have zero net expected value per trade.

**3:33** · So, we'll look at a really low RR strategy with a high win rate and then increasingly high RR with decreasing win rate up until four RR with 20% win rate.

**3:42** · And so, we're going to use some Monte Carlo simulation to simulate the equity paths of these strategies in the barrier problem that is a prop firm account challenge to figure figure what risk geometry works the best on strategies that all have equal and zero expected value. So, these are not strategies that would make any money traded on a real market, but can we make some money in a prop firm simulated environment by taking advantage of the convex payoff structure over maybe many attempts of an account challenge. Let's start here with a really high RR, 4:1 RR with a 20% win rate.

**4:10** · This is something like trying to top or bottom tick the market where you're obviously going to lose a lot more frequently than we're winning. If you think you know a guru who takes one trade every day and top ticks or bottom ticks with a super tight stop loss and a super wide take profit and they win 80% of the time, they're lying to you.

### Toy Strategy Results

**4:25** · That's just the reality of these intraday probability of touching problems. In this case, we passed 37% of the time and failed 63% of the time.

**4:32** · Then we move over here to 3:1 RR and our odds actually get a little bit better, right? 1% better, our odds of passing.

**4:38** · 2% better when we move up to 2:1 RR, 33% win rate. That's still zero expected value. Our chance of passing increases again when we move to 1:1 RR with 50% win rate and then increases again when we move to a larger stop than our take profit, still with equally zero expected value. And then it stays virtually the same when we move to an even wider stop with a 75% win rate here. So, you can see that for pass rate, there's a clear trend.

**5:02** · A worse worse RR with a wider stop and a narrower tighter take profit, but a higher win rate has a greater chance of passing these accounts. Now, could these RR and win rate pairings be different for your particular strategy?

**5:16** · Of course, they could, but I'm just saying most people have a zero or negative expected value strategy that they're trading. They're trading some stuff off of YouTube and they're trading it manually, which 99% of these people are, you probably have negative expected value if we're being honest. But the interesting thing about this convex payoff structure environment is that that doesn't necessarily preclude your making money. Now, the general trend is that as the standard deviation of trade P&amp;Ls increases, your pass rate decreases.

**5:39** · Meaning having a high win rate with a low RR or a high win rate with really consistent wins and then the occasional maybe larger loss is more conducive to passing a prop firm account challenge this barrier problem than a strategy that's the opposite of that.

### Real Strategy Example

**5:55** · What's something that we can actually trade that has a low RR and a high win rate like this and has something like a 40% pass rate on prop firms? Well, if we apply this type of RR to an opening range breakout strategy, we can actually achieve a win rate just like this. And with that win rate, we have a pass rate on the funded accounts just like the one we observed in the simulation just using a GBM or a stochastic jump diffusion.

**6:16** · The particular opening range breakout strategy that I coded actually has a little bit of a better pass probability than what we observed in the completely random example because it has slight positive expected value per trade. Okay, so now we're passing accounts about 50% of the time, which is crazy when you consider that Topstep's own statistics from 2024, I think, put people passing at what? At 12.4%.

**6:38** · Are you serious? And all we had to do was just code a strategy that's not even viable in the real world, generates very small positive expected value, and already we have almost 50% chance of passing. So boom, just like that we deploy this live on the API and we pass 50% of the time and already we're four times better than the average Topstep trader. How hard was that? I built this in 20 minutes. So what happens if we do even just a little bit better than this?

**6:59** · Well, you might have seen my video on TikTok and Instagram where I passed a Topstep account challenge on my first try, the first time I first and last time I've ever tried a funded account challenge, passed on my first try in the minimum number of days. And the strategy that I traded had over a 90% chance of passing and that's why I was able to do that. Yet these day traders continue throwing money at courses and ignoring or commenting hate on my videos. It's insane. But those people are probably in the 87.6% here. So Okay, but what's more important than our pass percentage here is whether or not we actually make money on the accounts once we've passed. So let's figure that out.

### Modeling the Funded Phase

**7:28** · So it turns out that our strategy with the best odds of passing during the challenge phase here is not actually the one that generates the highest expected payout value once the account is actually funded. We change our risk geometry a little bit for the funded phase and then all of a sudden our average expected payout per passed account per past account, that's important, is about $9,000. Does this mean that every single time you pay $49 to approach an account challenge, you're going to make $9,000? No, because we have a 40-something percent chance of passing.

**7:52** · So, our net expected value per account is going to factor in how many challenges we have to take in order to actually get the funded account, then the activation fee, and then our average payout once we have an activated account here. So, in the pessimistic case here, we pay about $300 on average to get an active funded account, and then we make on average about $8,900, so $8,600 net of challenge fees and activation fees.

### Takeaways

**8:15** · So, there you go. Now, you understand what risk geometry works best on funded account challenges. Now, you understand what a convex payoff structure is and how you can take advantage of that with a strategy that has no expected value or very small positive expected value, and how you can use that to generate net of fees, net of fees positive expected value on prop firm accounts. Stop paying gurus money. Stop watching YouTube videos about trading strategies. Stop watching get-rich-quick content. Start learning how to code just deploy something like this using the API of your prop firm and make some money. You don't even need a winning strategy.

**8:44** · You just need to know how to take advantage of the the shape of the payoff structure of these prop firm accounts, where the losses aren't realized, but the winnings are. Okay, so that's all I have for you today. If you're interested in building, testing, optimizing, and deploying programmatic trading strategies and learning about the math of programmatic trading, you can join the Quant Pad waitlist. The public beta is closed now, but we're probably going to open the actual version two production version in about a month and a half to two months.