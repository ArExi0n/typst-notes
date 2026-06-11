---
title: Black–Scholes equation
source: https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_equation
author:
  - "[[Wikipedia]]"
published: 2008-05-28
created: 2026-06-06
description:
tags:
  - clippings
  - Quant
  - QuantResearch
  - mathematics
---
![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Black-Scholes_surface_plot_with_random_paths.svg/500px-Black-Scholes_surface_plot_with_random_paths.svg.png)

The surface plot of the value of a European call option over time and price of underlying stock, along with some representative stock price trajectories. If the stock price starts high above the strike price, then it is likely to end up above the strike price. If the stock price starts much below, then it has a small chance of ending up above the strike price. The average value of the trajectories' end-point is exactly equal to the height of the surface.

In [mathematical finance](https://en.wikipedia.org/wiki/Mathematical_finance "Mathematical finance"), the **Black–Scholes equation**, also called the **Black–Scholes–Merton equation**, is a [partial differential equation](https://en.wikipedia.org/wiki/Partial_differential_equation "Partial differential equation") (PDE) governing the price evolution of derivatives under the [Black–Scholes model](https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_model "Black–Scholes model").[^1] Broadly speaking, the term may refer to a similar PDE that can be derived for a variety of [options](https://en.wikipedia.org/wiki/Option_\(finance\) "Option (finance)"), or more generally, [derivatives](https://en.wikipedia.org/wiki/Derivative_\(finance\) "Derivative (finance)").

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Stockpricesimulation.jpg/250px-Stockpricesimulation.jpg)

Simulated geometric Brownian motions with parameters from market data

Consider a stock paying no dividends. Now construct any derivative that has a fixed maturation time ${\displaystyle T}$ in the future, and at maturation, it has payoff ${\displaystyle K(S_{T})}$ that depends on the values taken by the stock at that moment (such as European call or put options). Then the price of the derivative satisfies

${\displaystyle {\begin{cases}{\frac {\partial V}{\partial t}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}+rS{\frac {\partial V}{\partial S}}-rV=0\\V(T,s)=K(s)\quad \forall s\end{cases}}}$

where ${\displaystyle V(t,S)}$ is the price of the option as a function of stock price *S* and time *t*, *r* is the risk-free interest rate, and ${\displaystyle \sigma }$ is the [volatility](https://en.wikipedia.org/wiki/Volatility_\(finance\) "Volatility (finance)") of the stock.

The key financial insight behind the equation is that, under the model assumption of a [frictionless market](https://en.wikipedia.org/wiki/Frictionless_market "Frictionless market"), one can perfectly [hedge](https://en.wikipedia.org/wiki/Hedge_\(finance\) "Hedge (finance)") the option by buying and selling the [underlying](https://en.wikipedia.org/wiki/Underlying "Underlying") asset in just the right way and consequently “eliminate risk". This hedge, in turn, implies that there is only one right price for the option, as returned by the [Black–Scholes formula](https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_formula "Black–Scholes formula").

## Financial interpretation

The equation has a concrete interpretation that is often used by practitioners and is the basis for the common derivation given in the next subsection. The equation can be rewritten in the form:

${\displaystyle {\frac {\partial V}{\partial t}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}=rV-rS{\frac {\partial V}{\partial S}}}$

The left-hand side consists of a "time decay" term, the change in derivative value with respect to time, called [theta](https://en.wikipedia.org/wiki/Greeks_\(finance\)#Theta "Greeks (finance)"), and a term involving the second spatial derivative [gamma](https://en.wikipedia.org/wiki/Greeks_\(finance\)#Gamma "Greeks (finance)"), the convexity of the derivative value with respect to the underlying value. The right-hand side is the riskless [rate of return](https://en.wikipedia.org/wiki/Rate_of_return "Rate of return") from a long position in the derivative and a short position consisting of ${\textstyle {\partial V}/{\partial S}}$ shares of the underlying asset.

Black and Scholes's insight was that the portfolio represented by the right-hand side is indeed riskless: thus the right-hand side is its real rate of return and the equation says that this riskless return over any [infinitesimal](https://en.wikipedia.org/wiki/Infinitesimal "Infinitesimal") time interval can be expressed as the sum of theta and a term incorporating gamma - and is otherwise independent of delta. For an option, theta is typically negative, reflecting the loss in value due to having less time for exercising the option (for a European call on an underlying without dividends, it is always negative). Gamma is typically positive and so the gamma term reflects the gains in holding the option. The equation states that over any infinitesimal time interval the loss from theta and the gain from the gamma term must offset each other so that the result is a return at the riskless rate.

From the viewpoint of the option issuer, e.g. an investment bank, the gamma term is the cost of hedging the option. (Since gamma is the greatest when the spot price of the underlying is near the strike price of the option, the seller's hedging costs are the greatest in that circumstance.)

## Derivation

Per the model assumptions above, the price of the [underlying asset](https://en.wikipedia.org/wiki/Underlying_asset "Underlying asset") (typically a stock) follows a [geometric Brownian motion](https://en.wikipedia.org/wiki/Geometric_Brownian_motion "Geometric Brownian motion").[^2] That is

${\displaystyle dS=\mu S\,dt+\sigma S\,dW\,}$

where *W* is a stochastic variable ([Brownian motion](https://en.wikipedia.org/wiki/Wiener_process "Wiener process")). Note that *W*, and consequently its infinitesimal increment *dW*, represents the only source of uncertainty in the price history of the stock. Intuitively, *W* (*t*) is a [process](https://en.wikipedia.org/wiki/Random_process "Random process") that "wiggles up and down" in such a random way that its expected change over any time interval is 0. (In addition, its [variance](https://en.wikipedia.org/wiki/Variance "Variance") over time *T* is equal to *T*; see [Wiener process § Basic properties](https://en.wikipedia.org/wiki/Wiener_process#Basic_properties "Wiener process")); a good discrete analogue for *W* is a [simple random walk](https://en.wikipedia.org/wiki/Simple_random_walk "Simple random walk"). Thus the above equation states that the infinitesimal rate of return on the stock has an expected value of *μ* *dt* and a variance of ${\displaystyle \sigma ^{2}dt}$.

The payoff of an option (or any derivative contingent to stock S) ${\displaystyle V(S,T)}$ at maturity is known. To find its value at an earlier time we need to know how ${\displaystyle V}$ evolves as a function of ${\displaystyle S}$ and ${\displaystyle t}$. By [Itô's lemma](https://en.wikipedia.org/wiki/It%C3%B4%27s_lemma "Itô's lemma") for two variables we have

${\displaystyle dV=\left(\mu S{\frac {\partial V}{\partial S}}+{\frac {\partial V}{\partial t}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}\right)dt+\sigma S{\frac {\partial V}{\partial S}}\,dW}$

Now consider a portfolio ${\displaystyle \Pi }$ consisting of a short option and ${\textstyle {\partial V}/{\partial S}}$ long shares at time ${\displaystyle t}$. The value of these holdings is

${\displaystyle \Pi =-V+{\frac {\partial V}{\partial S}}S}$

As ${\displaystyle {\frac {\partial V}{\partial S}}}$ changes with time, the position in ${\displaystyle S}$ is continually updated. We implicitly assume that the portfolio contains a cash account to accommodate buying and selling shares ${\displaystyle S}$, making the portfolio [self-financing](https://en.wikipedia.org/wiki/Self-financing_portfolio "Self-financing portfolio"). Therefore, we only need to consider the total profit or loss from changes in the values of the holdings:

${\displaystyle d\Pi =-dV+{\frac {\partial V}{\partial S}}dS}$

Substituting ${\displaystyle dS}$ and ${\displaystyle dV}$ into the expression for ${\displaystyle d\Pi }$:

${\displaystyle d\Pi =\left(-{\frac {\partial V}{\partial t}}-{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}\right)dt}$

Over a time period ${\displaystyle [t,t+\Delta t]}$, for ${\displaystyle \Delta t}$ small enough, we see that

${\displaystyle \Delta \Pi =\left(-{\frac {\partial V}{\partial t}}-{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}\right)\Delta t}$

Note that the ${\displaystyle dW}$ terms have vanished. Thus uncertainty has been eliminated and the portfolio is effectively riskless, i.e. a [delta-hedge](https://en.wikipedia.org/wiki/Delta_hedging "Delta hedging"). The rate of return on this portfolio must be equal to the rate of return on any other riskless instrument; otherwise, there would be opportunities for arbitrage. Now assuming the risk-free rate of return is ${\displaystyle r}$ we must have over the time period ${\displaystyle [t,t+\Delta t]}$:

${\displaystyle \Delta \Pi =r\Pi \,\Delta t}$

If we now substitute our formulas for ${\displaystyle \Delta \Pi }$ and ${\displaystyle \Pi }$ we obtain:

${\displaystyle \left(-{\frac {\partial V}{\partial t}}-{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}\right)\Delta t=r\left(-V+S{\frac {\partial V}{\partial S}}\right)\Delta t}$

Simplifying, we arrive at the Black–Scholes partial differential equation:

${\displaystyle {\frac {\partial V}{\partial t}}+rS{\frac {\partial V}{\partial S}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}=rV}$

With the assumptions of the [Black–Scholes model](https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_model "Black–Scholes model"), this second order partial differential equation holds for any type of option as long as its price function ${\displaystyle V}$ is twice differentiable with respect to ${\displaystyle S}$ and once with respect to ${\displaystyle t}$.

### Alternative derivation

Here is an alternative derivation that can be utilized in situations where it is initially unclear what the hedging portfolio should be. (For a reference, see 6.4 of Shreve vol II).[^3]

In the Black–Scholes model, assuming we have picked the risk-neutral [probability measure](https://en.wikipedia.org/wiki/Probability_measure "Probability measure"), the underlying stock price *S* (*t*) is assumed to evolve as a geometric Brownian motion:

${\displaystyle {\frac {dS(t)}{S(t)}}=r\ dt+\sigma dW(t)}$

Since this [stochastic differential equation](https://en.wikipedia.org/wiki/Stochastic_differential_equation "Stochastic differential equation") (SDE) shows the stock price evolution is [Markovian](https://en.wikipedia.org/wiki/Markov_chain "Markov chain"), any derivative on this underlying is a function of time *t* and the stock price at the current time, *S* (*t*). Then an application of Itô's lemma gives an SDE for the discounted derivative process ${\displaystyle e^{-rt}V(t,S(t))}$, which should be a martingale. In order for that to hold, the drift term must be zero, which implies the Black—Scholes PDE.

This derivation is basically an application of the [Feynman–Kac formula](https://en.wikipedia.org/wiki/Feynman%E2%80%93Kac_formula "Feynman–Kac formula") and can be attempted whenever the underlying asset(s) evolve according to given SDE(s).

## Solving methods

Once the Black–Scholes PDE, with boundary and terminal conditions, is derived for a derivative, the PDE can be solved numerically using standard methods of [numerical analysis](https://en.wikipedia.org/wiki/Numerical_analysis "Numerical analysis"), such as a type of [finite difference method](https://en.wikipedia.org/wiki/Finite_difference_method "Finite difference method").[^4] In certain cases, it is possible to solve for an exact formula, such as in the case of a European call, which was done by Black and Scholes.

The solution is conceptually simple. Since in the Black–Scholes model, the underlying stock price ${\displaystyle S_{t}}$ follows a geometric Brownian motion, the distribution of ${\displaystyle S_{T}}$, conditional on its price ${\displaystyle S_{t}}$ at time ${\displaystyle t}$, is a [log-normal distribution](https://en.wikipedia.org/wiki/Log-normal_distribution "Log-normal distribution"). Then the price of the derivative is just discounted expected payoff ${\displaystyle E[e^{-r(T-t)}K(S_{T})|S_{t}]}$, which may be computed analytically when the payoff function ${\displaystyle K}$ is analytically tractable, or numerically if not.

To do this for a [call option](https://en.wikipedia.org/wiki/Call_option "Call option"), recall the PDE above has [boundary conditions](https://en.wikipedia.org/wiki/Boundary_condition "Boundary condition") [^5]

${\displaystyle {\begin{aligned}C(0,t)&=0{\text{ for all }}t\\C(S,t)&\sim S-Ke^{-r(T-t)}{\text{ as }}S\rightarrow \infty \\C(S,T)&=\max\{S-K,0\}\end{aligned}}}$

The last condition gives the value of the option at the time that the option matures. Other conditions are possible as *S* goes to 0 or infinity. For example, common conditions utilized in other situations are to choose delta to vanish as *S* goes to 0 and gamma to vanish as *S* goes to infinity; these will give the same formula as the conditions above (in general, differing boundary conditions will give different solutions, so some financial insight should be utilized to pick suitable conditions for the situation at hand).

The solution of the PDE gives the value of the option at any earlier time, ${\displaystyle \mathbb {E} \left[\max\{S-K,0\}\right]}$. To solve the PDE we recognize that it is a [Cauchy–Euler equation](https://en.wikipedia.org/wiki/Cauchy%E2%80%93Euler_equation "Cauchy–Euler equation") which can be transformed into a [diffusion equation](https://en.wikipedia.org/wiki/Heat_equation "Heat equation") by introducing the change-of-variable transformation

${\displaystyle {\begin{aligned}\tau &=T-t\\u&=Ce^{r\tau }\\x&=\ln \left({\frac {S}{K}}\right)+\left(r-{\frac {1}{2}}\sigma ^{2}\right)\tau \end{aligned}}}$

Then the Black–Scholes PDE becomes a [diffusion equation](https://en.wikipedia.org/wiki/Diffusion_equation "Diffusion equation")

${\displaystyle {\frac {\partial u}{\partial \tau }}={\frac {1}{2}}\sigma ^{2}{\frac {\partial ^{2}u}{\partial x^{2}}}}$

The terminal condition ${\displaystyle C(S,T)=\max\{S-K,0\}}$ now becomes an [initial condition](https://en.wikipedia.org/wiki/Initial_condition "Initial condition")

${\displaystyle u(x,0)=u_{0}(x):=K(e^{\max\{x,0\}}-1)=K\left(e^{x}-1\right)H(x),}$

where *H* (*x*) is the [Heaviside step function](https://en.wikipedia.org/wiki/Heaviside_step_function "Heaviside step function"). The Heaviside function corresponds to enforcement of the boundary data in the *S*, *t* coordinate system that requires when *t* = *T*,

${\displaystyle C(S,\,T)=0\quad \forall \;S<K,}$

assuming both *S*, *K* > 0. With this assumption, it is equivalent to the max function over all *x* in the real numbers, with the exception of *x* = 0. The equality above between the **max** function and the Heaviside function is in the sense of distributions because it does not hold for *x* = 0. Though subtle, this is important because the Heaviside function need not be finite at *x* = 0, or even defined for that matter. For more on the value of the Heaviside function at *x* = 0, see the section "Zero Argument" in the article [Heaviside step function](https://en.wikipedia.org/wiki/Heaviside_step_function "Heaviside step function").

Using the standard [convolution](https://en.wikipedia.org/wiki/Convolution "Convolution") method for solving a [diffusion equation](https://en.wikipedia.org/wiki/Diffusion_equation "Diffusion equation") given an initial value function, *u* (*x*, 0), we have

${\displaystyle u(x,\tau )={\frac {1}{\sigma {\sqrt {2\pi \tau }}}}\int _{-\infty }^{\infty }{u_{0}(y)\exp {\left[-{\frac {(x-y)^{2}}{2\sigma ^{2}\tau }}\right]}}dy,}$

which, after some manipulation, yields

${\displaystyle u(x,\tau )=Ke^{x+{\frac {1}{2}}\sigma ^{2}\tau }N(d_{+})-KN(d_{-}),}$

where ${\displaystyle N(\cdot )}$ is the [standard normal](https://en.wikipedia.org/wiki/Standard_normal "Standard normal") [cumulative distribution function](https://en.wikipedia.org/wiki/Cumulative_distribution_function "Cumulative distribution function") and

${\displaystyle {\begin{aligned}d_{+}&={\frac {1}{\sigma {\sqrt {\tau }}}}\left[\left(x+{\frac {1}{2}}\sigma ^{2}\tau \right)+{\frac {1}{2}}\sigma ^{2}\tau \right]\\d_{-}&={\frac {1}{\sigma {\sqrt {\tau }}}}\left[\left(x+{\frac {1}{2}}\sigma ^{2}\tau \right)-{\frac {1}{2}}\sigma ^{2}\tau \right].\end{aligned}}}$

These are the same solutions (up to time translation) that were obtained by [Fischer Black](https://en.wikipedia.org/wiki/Fischer_Black "Fischer Black") in 1976.[^6]

Reverting ${\displaystyle u,x,\tau }$ to the original set of variables yields the above stated solution to the Black–Scholes equation.

The asymptotic condition can now be realized.

${\displaystyle u(x,\,\tau ){\overset {x\rightsquigarrow \infty }{\asymp }}Ke^{x},}$

which gives simply *S* when reverting to the original coordinates.

${\displaystyle \lim _{x\to \infty }N(x)=1.}$

[^1]: [Øksendal, Bernt](https://en.wikipedia.org/wiki/Bernt_%C3%98ksendal "Bernt Øksendal") (1998). "Option Pricing". *Stochastic Differential Equations: An Introduction with Applications* (5th ed.). Berlin: Springer. pp. 266–283. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [3-540-63720-6](https://en.wikipedia.org/wiki/Special:BookSources/3-540-63720-6 "Special:BookSources/3-540-63720-6").

[^2]: Hull, John C. (2008). *Options, Futures and Other Derivatives* (7 ed.). [Prentice Hall](https://en.wikipedia.org/wiki/Prentice_Hall "Prentice Hall"). pp. 287–288. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-13-505283-9](https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-505283-9 "Special:BookSources/978-0-13-505283-9").

[^3]: Shreve, Steven (2004). *Stochastic Calculus for Finance II* (1st ed.). Springer. pp. 268–272. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [0-387-40101-6](https://en.wikipedia.org/wiki/Special:BookSources/0-387-40101-6 "Special:BookSources/0-387-40101-6").

[^4]: Wilmott, Paul; Howison, Sam; Dewynne, Jeff (1995). ["Finite-difference Methods"](https://books.google.com/books?id=VYVhnC3fIVEC&pg=PA135). *The Mathematics of Financial Derivatives*. Cambridge University Press. pp. 135–164. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [0-521-49789-2](https://en.wikipedia.org/wiki/Special:BookSources/0-521-49789-2 "Special:BookSources/0-521-49789-2").

[^5]: Chan, Raymond (2021-07-03), [*Black-Scholes Equations*](https://www.math.cuhk.edu.hk/~rchan/teaching/math4210/chap08.pdf) (PDF)

[^6]: See equation (16) in Black, Fischer S. (1976). "The Pricing of Commodity Contracts". *[Journal of Financial Economics](https://en.wikipedia.org/wiki/Journal_of_Financial_Economics "Journal of Financial Economics")*. **3** (1–2): 167–179. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1016/0304-405X(76)90024-6](https://doi.org/10.1016%2F0304-405X%2876%2990024-6).