---
title: "Mean Reversion: The Math Behind the Market Magnet"
source: https://www.youtube.com/watch?v=ThH075heC4E&t=60s
author:
  - "[[Algovibes]]"
published: 2026-05-28
created: 2026-05-30
description: "Mean reversion is one of the most important ideas in quantitative finance: some markets wander randomly, while others get pulled back toward a long-term average.In this video, we break down the intui"
tags:
  - clippings
  - Quant
  - mathematics
---
![](https://www.youtube.com/watch?v=ThH075heC4E)

Mean reversion is one of the most important ideas in quantitative finance: some markets wander randomly, while others get pulled back toward a long-term average.  
In this video, we break down the intuition, the Ornstein-Uhlenbeck process, half-life, stationary distributions, Z-scores, and how mean reversion can become a trading signal.  
  
I actually backtested and constructed a mean reversion strategy here:  
https://youtu.be/qOsjfj5z\_58?si=9RqEASC8tokOkQTq  
  
Support my channel and get access to notebooks / data / pipelines here:  
https://www.youtube.com/channel/UC87aeHqMrlR6ED0w2SVi5nw/join  
  
If you want to learn Python for Finance check out my website:  
https://www.pythonforfinance.info

## Transcript

**0:00** · Some price series wander. They move up, they move down, and over time they drift away. That is the idea behind a random walk. No anchor, no preferred level, no force pulling it back.

**0:11** · But some financial variables behave differently. They move around, but they do not wander forever. When they get too high, they tend to fall. When they get too low, they tend to rise.

**0:22** · That is mean reversion. Mean reversion is the idea that some variables are pulled back toward a long-term average, like a magnet. Or in markets, like an expensive rubber band. This video is about the math behind that magnet.

**0:35** · Because prices above average, therefore short it is not a strategy. A mean reverting process has a long-term equilibrium level. Call it mu. The variable can move away from mu, but the further it moves away, the stronger the pull back becomes. Interest rates and volatility are classic examples. They can spike or crash, but they usually do not drift forever like a stock index.

**0:58** · Eventually the variable will drift back toward a more normal level. This is why mean reversion can become a tradable edge. Not because the market is magically predictable, but because some variables have structure, they have an anchor.

**1:11** · Uh the classic model for this is called the Ornstein-Uhlenbeck process.

**1:15** · It looks like this. X is the current value, mu is the long-term mean, theta is the speed of reversion, sigma is random noise. The first part is the pull toward the mean. If X is below mu, the drift is positive, so the process gets pushed upward. If X is above mu, the drift is negative, so the process gets pushed downward. That is the whole mechanism. A magnet pulling the process back toward its average. The second part is noise. Markets do not calmly walk back to fair value like a well-behaved spreadsheet. Uh they get kicked around by random shocks.

**1:47** · So, mean reversion is not a smooth return to the average, it is a pull toward the average mixed with randomness. The expected value of this model has a clean shape. The process is expected to move back toward mu over time, but it does not happen instantly. The starting deviation fades gradually, and the speed of that fading depends on theta.

**2:11** · Large theta means fast reversion, small theta means slow reversion.

**2:16** · This matters because being right eventually is not enough. Eventually is where capital goes to experience character development. A practical way to measure reversion speed is the half-life. The half-life tells us how long it takes for a deviation from the mean to be cut in half.

**2:31** · For this model, the half-life is log of 2 divided by theta. Fast mean reversion gives a short half-life. Slow mean reversion gives a long half-life. A signal that takes 5 days to revert is very different from one that takes 5 years.

**2:45** · The model also has a stationary distribution. Over the long run, the process does not drift away forever. It settles into a stable distribution around mu.

**2:54** · The wider that distribution, the more noise there is. The tighter that distribution, the stronger the reversion.

**3:00** · This helps us judge whether a move is actually extreme. Being far from the mean only matters relative to the normal volatility of the process. That leads to the trading signal. Usually traders use a Z-score. A Z-score tells us how far the current value is from its mean, measured in standard deviations.

**3:17** · If the Z-score is high, the series may be stretched upward. If the Z-score is low, it may be stretched downward. A basic strategy might short high Z-scores, long low Z-scores, and exit long when the value moves back toward the mean. Simple idea, dangerous execution, because the real question is whether the series actually mean reverts. Not everything that looks mean reverting is mean reverting. Sometimes a spread moves away because the relationship has changed. Sometimes the mean itself has shifted. Sometimes the backtest was just being polite.

**3:51** · Before trading mean reversion, we need to test for it. Does the series have an anchor?

**3:56** · Do deviations predict future movement in the opposite direction? Or is the process just wandering?

**4:06** · Mean reversion appears all over finance.

**4:09** · Interest rates use it. Volatility models use it. Pairs trading is built around it.

**4:15** · The Ornstein-Uhlenbeck family includes Vasicek, CIR, Heston, and SABR.

**4:21** · Different models. Same intuition. A variable moves away from its normal level. A force pulls it back. Randomness keeps the journey messy.

**4:30** · Mean reversion is not magic. It is not price went up, so now it must go down.

**4:35** · It is a model of markets where some variables have a long-term anchor. The goal is to estimate that anchor.

**4:41** · Estimate the speed of reversion, measure the noise, and then decide whether a deviation is tradeable. That is mean reversion. A magnet, noise, and the hope that the average still means something.