---
title: Black–Scholes model
source: https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_model
author:
  - "[[Wikipedia]]"
published:
created: 2026-06-06
description:
tags:
  - clippings
  - QuantitativeFinance
  - Quant
  - mathematics
---
The **Black–Scholes** [/ ˌ b l æ k ˈ ʃ oʊ l z /](https://en.wikipedia.org/wiki/Help:IPA/English "Help:IPA/English") [^2] or **Black–Scholes–Merton model** is a [mathematical model](https://en.wikipedia.org/wiki/Mathematical_model "Mathematical model") for the dynamics of a [financial market](https://en.wikipedia.org/wiki/Financial_market "Financial market") containing [derivative](https://en.wikipedia.org/wiki/Derivative_\(finance\) "Derivative (finance)") investment instruments. From the [parabolic partial differential equation](https://en.wikipedia.org/wiki/Parabolic_partial_differential_equation "Parabolic partial differential equation") in the model, known as the [Black–Scholes equation](https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_equation "Black–Scholes equation"), one can deduce the **Black–Scholes formula**, which gives a theoretical estimate of the price of [European-style](https://en.wikipedia.org/wiki/Option_style "Option style") [options](https://en.wikipedia.org/wiki/Option_\(finance\) "Option (finance)") and shows that the option has a *unique* price given the risk of the security and its expected return (instead replacing the security's expected return with the [risk-neutral](https://en.wikipedia.org/wiki/Risk-neutral "Risk-neutral") rate). The equation and model are named after economists [Fischer Black](https://en.wikipedia.org/wiki/Fischer_Black "Fischer Black") and [Myron Scholes](https://en.wikipedia.org/wiki/Myron_Scholes "Myron Scholes"). [Robert C. Merton](https://en.wikipedia.org/wiki/Robert_C._Merton "Robert C. Merton"), who first wrote an academic paper on the subject, is sometimes also credited.

The main principle behind the model is to [hedge](https://en.wikipedia.org/wiki/Hedge_\(finance\) "Hedge (finance)") the option by buying and selling the underlying asset in a specific way to eliminate risk. This type of hedging is called "continuously revised [delta hedging](https://en.wikipedia.org/wiki/Delta_hedging "Delta hedging") " and is the basis of more complicated hedging strategies such as those used by [investment banks](https://en.wikipedia.org/wiki/Investment_bank "Investment bank") and [hedge funds](https://en.wikipedia.org/wiki/Hedge_fund "Hedge fund").

The model is widely used, although often with some adjustments, by options market participants.[^3]<sup><span title="Page / location: 751">: 751</span> </sup> The model's assumptions have been relaxed and generalized in many directions, leading to a plethora of models that are currently used in derivative pricing and risk management. The insights of the model, as exemplified by the [Black–Scholes formula](#Black–Scholes_formula), are frequently used by market participants, as distinguished from the actual prices. These insights include [no-arbitrage bounds](https://en.wikipedia.org/wiki/No-arbitrage_bounds "No-arbitrage bounds") and [risk-neutral pricing](https://en.wikipedia.org/wiki/Risk-neutral_measure "Risk-neutral measure") (thanks to continuous revision). Further, the Black–Scholes equation, a partial differential equation that governs the price of the option, enables pricing using [numerical methods](https://en.wikipedia.org/wiki/Numerical_methods "Numerical methods") when an explicit formula is not possible.

The Black–Scholes formula has only one parameter that cannot be directly observed in the market: the average future volatility of the underlying asset, though it can be found from the price of other options. Since the option value (whether put or call) is increasing in this parameter, it can be inverted to produce a " [volatility surface](https://en.wikipedia.org/wiki/Volatility_surface "Volatility surface") " that is then used to calibrate other models, e.g., for [OTC derivatives](https://en.wikipedia.org/wiki/Derivative_\(finance\)#Over-the-counter_derivatives "Derivative (finance)").

## History

[Louis Bachelier's](https://en.wikipedia.org/wiki/Louis_Bachelier "Louis Bachelier") thesis [^4] in 1900 was the earliest publication to apply [Brownian motion](https://en.wikipedia.org/wiki/Wiener_process "Wiener process") to derivative pricing, though his work had little impact for many years and included important limitations for its application to modern markets.[^5] In the 1960's [Case Sprenkle](https://en.wikipedia.org/wiki/Case_Sprenkle "Case Sprenkle"),[^6] James Boness,[^7] [Paul Samuelson](https://en.wikipedia.org/wiki/Paul_Samuelson "Paul Samuelson"),[^8] and Samuelson's Ph.D. student at the time [Robert C. Merton](https://en.wikipedia.org/wiki/Robert_C._Merton "Robert C. Merton") [^9] all made important improvements to the theory of options pricing.

[Fischer Black](https://en.wikipedia.org/wiki/Fischer_Black "Fischer Black") and [Myron Scholes](https://en.wikipedia.org/wiki/Myron_Scholes "Myron Scholes") demonstrated in 1968 that a dynamic revision of a portfolio removes the [expected return](https://en.wikipedia.org/wiki/Expected_return "Expected return") of the security, thus inventing the *risk neutral argument*.[^10] [^11] They based their thinking on work previously done by market researchers and practitioners including the work mentioned above, as well as work by [Sheen Kassouf](https://en.wikipedia.org/wiki/Sheen_Kassouf "Sheen Kassouf") and [Edward O. Thorp](https://en.wikipedia.org/wiki/Edward_O._Thorp "Edward O. Thorp"). Black and Scholes then attempted to apply the formula to the markets, but incurred financial losses, due to a lack of [risk management](https://en.wikipedia.org/wiki/Risk_management "Risk management") in their trades. In 1970, they decided to return to the academic environment.[^12] After three years of efforts, the formula—named in honor of them for making it public—was finally published in 1973 in an article titled "The Pricing of Options and Corporate Liabilities", in the *[Journal of Political Economy](https://en.wikipedia.org/wiki/Journal_of_Political_Economy "Journal of Political Economy")*.[^13] [^14] [^15] [Robert C. Merton](https://en.wikipedia.org/wiki/Robert_C._Merton "Robert C. Merton") was the first to publish a paper expanding the mathematical understanding of the options pricing model, and coined the term "Black–Scholes [options pricing](https://en.wikipedia.org/wiki/Options_pricing "Options pricing") model".[^9]

The formula led to a boom in options trading and provided mathematical legitimacy to the activities of the [Chicago Board Options Exchange](https://en.wikipedia.org/wiki/Chicago_Board_Options_Exchange "Chicago Board Options Exchange") and other options markets around the world.[^16]

Merton and Scholes received the 1997 [Nobel Memorial Prize in Economic Sciences](https://en.wikipedia.org/wiki/Nobel_Memorial_Prize_in_Economic_Sciences "Nobel Memorial Prize in Economic Sciences") for their work, the committee citing their discovery of the risk neutral dynamic revision as a breakthrough that separates the option from the risk of the underlying security.[^17] Although ineligible for the prize because of his death in 1995, Black was mentioned as a contributor by the [Swedish Academy](https://en.wikipedia.org/wiki/Swedish_Academy_of_Science "Swedish Academy of Science").[^18]

## Fundamental hypotheses

The Black–Scholes model assumes that the market consists of at least one risky asset, usually called the stock, and one riskless asset, usually called the [money market](https://en.wikipedia.org/wiki/Money_market "Money market"), cash, or [bond](https://en.wikipedia.org/wiki/Bond_\(finance\) "Bond (finance)").

The following assumptions are made about the assets (which relate to the names of the assets):

- Risk-free rate: The rate of return on the riskless asset is constant and thus called the [risk-free interest rate](https://en.wikipedia.org/wiki/Risk-free_interest_rate "Risk-free interest rate").
- Random walk: The instantaneous log return of the stock price is an infinitesimal [random walk](https://en.wikipedia.org/wiki/Random_walk "Random walk") with drift; more precisely, the stock price follows a [geometric Brownian motion](https://en.wikipedia.org/wiki/Geometric_Brownian_motion "Geometric Brownian motion"), and it is assumed that the drift and volatility of the motion are constant. If drift and volatility are time-varying, a suitably modified Black–Scholes formula can be deduced, as long as the volatility is not random.
- The stock does not pay a [dividend](https://en.wikipedia.org/wiki/Dividend "Dividend").[^1]

The assumptions about the market are:

- No [arbitrage](https://en.wikipedia.org/wiki/Arbitrage "Arbitrage") opportunity (i.e., there is no way to make a riskless profit in excess of the risk-free rate).
- Ability to borrow and lend any amount, even fractional, of cash at the riskless rate.
- Ability to buy and sell any amount, even fractional, of the stock (this includes [short selling](https://en.wikipedia.org/wiki/Short_selling "Short selling")).
- The above transactions do not incur any fees or costs (i.e., [frictionless market](https://en.wikipedia.org/wiki/Frictionless_market "Frictionless market")).

With these assumptions, suppose there is a derivative security also trading in this market. It is specified that this security will have a certain payoff on a specified future date, depending on the values of the stock up to that date. Even though the path the stock price will take in the future is unknown, the derivative's price can be determined at the current time. For the special case of a European call or put option, Black and Scholes showed that "it is possible to create a [hedged position](https://en.wikipedia.org/wiki/Hedge_\(finance\) "Hedge (finance)"), consisting of a long position in the stock and a short position in the option, whose value will not depend on the price of the stock".[^19] Their dynamic hedging strategy led to a partial differential equation which governs the price of the option. Its solution is given by the Black–Scholes formula.

Several of these assumptions of the original model have been removed in subsequent extensions of the model. Modern versions account for dynamic interest rates (Merton, 1976), [transaction costs](https://en.wikipedia.org/wiki/Transaction_cost "Transaction cost") and taxes (Ingersoll, 1976), and dividend payout.[^20]

## Notation

At time *t,* in particular:

${\displaystyle C(S,t)}$ is the price of a European call option and

${\displaystyle P(S,t)}$ is the price of a European put option.

${\displaystyle T}$ is the time of option expiration.

${\displaystyle \tau }$ is the time until maturity: ${\displaystyle \tau =T-t}$.

${\displaystyle K}$ is the [strike price](https://en.wikipedia.org/wiki/Strike_price "Strike price") of the option, also known as the exercise price.

${\displaystyle N(x)}$ denotes the [standard normal](https://en.wikipedia.org/wiki/Standard_normal "Standard normal") [cumulative distribution function](https://en.wikipedia.org/wiki/Cumulative_distribution_function "Cumulative distribution function"):

${\displaystyle N(x)={\frac {1}{\sqrt {2\pi }}}\int _{-\infty }^{x}e^{-z^{2}/2}\,dz.}$

${\displaystyle N'(x)}$ denotes the standard normal [probability density function](https://en.wikipedia.org/wiki/Probability_density_function "Probability density function"):

${\displaystyle N'(x)={\frac {dN(x)}{dx}}={\frac {1}{\sqrt {2\pi }}}e^{-x^{2}/2}.}$

## Black–Scholes equation

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Stockpricesimulation.jpg/250px-Stockpricesimulation.jpg)

Simulated geometric Brownian motions with parameters from market data

The Black–Scholes equation is a [parabolic partial differential equation](https://en.wikipedia.org/wiki/Parabolic_partial_differential_equation "Parabolic partial differential equation") that describes the price ${\displaystyle V(S,t)}$ of the option, where ${\displaystyle S}$ is the price of the underlying asset and ${\displaystyle t}$ is time:

${\displaystyle {\frac {\partial V}{\partial t}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}+rS{\frac {\partial V}{\partial S}}-rV=0}$

A key financial insight behind the equation is that one can perfectly [hedge](https://en.wikipedia.org/wiki/Hedge_\(finance\) "Hedge (finance)") the option by buying and selling the [underlying](https://en.wikipedia.org/wiki/Underlying "Underlying") asset and the bank account asset (cash) in such a way as to "eliminate risk". This implies that there is a unique price for the option given by the Black–Scholes formula (see the [next section](#Black–Scholes_formula)).

## Black–Scholes formula

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/European_Call_Surface.png/250px-European_Call_Surface.png)

A European call valued using the Black–Scholes pricing equation for varying asset price {\\displaystyle S} and time-to-expiry {\\displaystyle T}. In this particular example, the strike price is set to 1.

The Black–Scholes formula calculates the price of [European](https://en.wikipedia.org/wiki/European_option "European option") [put](https://en.wikipedia.org/wiki/Put_option "Put option") and [call options](https://en.wikipedia.org/wiki/Call_option "Call option"). This price is [consistent](https://en.wikipedia.org/wiki/Consistency "Consistency") with the Black–Scholes equation. This follows since the formula can be obtained [by solving](https://en.wikipedia.org/wiki/Equation_solving#Differential_equations "Equation solving") the equation for the corresponding terminal and [boundary conditions](https://en.wikipedia.org/wiki/Boundary_Conditions "Boundary Conditions"):[^21]

${\displaystyle {\begin{aligned}C(0,t)&=0{\text{ for all }}t\\C(S,t)&\sim S-Ke^{-r(T-t)}{\text{ as }}S\rightarrow \infty \\C(S,T)&=\max\{S-K,0\}\end{aligned}}}$

The value of a call option for a non-dividend-paying underlying stock in terms of the Black–Scholes parameters is:

${\displaystyle {\begin{aligned}C(S_{t},t)&=N(d_{+})S_{t}-N(d_{-})Ke^{-r(T-t)}\\d_{+}&={\frac {1}{\sigma {\sqrt {T-t}}}}\left[\ln \left({\frac {S_{t}}{K}}\right)+\left(r+{\frac {\sigma ^{2}}{2}}\right)(T-t)\right]\\d_{-}&=d_{+}-\sigma {\sqrt {T-t}}\\\end{aligned}}}$

The price of a corresponding put option based on [put–call parity](https://en.wikipedia.org/wiki/Put%E2%80%93call_parity "Put–call parity") with [discount factor](https://en.wikipedia.org/wiki/Discount_factor "Discount factor") ${\displaystyle e^{-r(T-t)}}$ is:

${\displaystyle {\begin{aligned}P(S_{t},t)&=Ke^{-r(T-t)}-S_{t}+C(S_{t},t)\\&=N(-d_{-})Ke^{-r(T-t)}-N(-d_{+})S_{t}\end{aligned}}\,}$

### Alternative formulation

Introducing auxiliary variables allows for the formula to be simplified and reformulated in a form that can be more convenient (this is a special case of the [Black '76 formula](https://en.wikipedia.org/wiki/Black_model "Black model")):

${\displaystyle {\begin{aligned}C(F,\tau )&=D\left[N(d_{+})F-N(d_{-})K\right]\\d_{+}&={\frac {1}{\sigma {\sqrt {\tau }}}}\left[\ln \left({\frac {F}{K}}\right)+{\frac {1}{2}}\sigma ^{2}\tau \right]\\d_{-}&=d_{+}-\sigma {\sqrt {\tau }}\end{aligned}}}$

where:

${\displaystyle D=e^{-r\tau }}$ is the discount factor

${\displaystyle F=e^{r\tau }S={\frac {S}{D}}}$ is the [forward price](https://en.wikipedia.org/wiki/Forward_price "Forward price") of the underlying asset, and ${\displaystyle S=DF}$

Given put–call parity, which is expressed in these terms as:

${\displaystyle C-P=D(F-K)=S-DK}$

the price of a put option is:

${\displaystyle P(F,\tau )=D\left[N(-d_{-})K-N(-d_{+})F\right]}$

### Interpretation

It is possible to have intuitive interpretations of the Black–Scholes formula, with the main subtlety being the interpretation of ${\displaystyle d_{\pm }}$ and why there are two different terms.[^22]

The formula can be interpreted by first decomposing a call option into the difference of two [binary options](https://en.wikipedia.org/wiki/Binary_option "Binary option"): an [asset-or-nothing call](https://en.wikipedia.org/wiki/Asset-or-nothing_call "Asset-or-nothing call") minus a [cash-or-nothing call](https://en.wikipedia.org/wiki/Cash-or-nothing_call "Cash-or-nothing call") (long an asset-or-nothing call, short a cash-or-nothing call). A call option exchanges cash for an asset at expiry, while an asset-or-nothing call just yields the asset (with no cash in exchange) and a cash-or-nothing call just yields cash (with no asset in exchange). The Black–Scholes formula is a difference of two terms, and these two terms are equal to the values of the binary call options. These binary options are less frequently traded than vanilla call options, but are easier to analyze.

Thus the formula:

${\displaystyle C=D\left[N(d_{+})F-N(d_{-})K\right]}$

breaks up as:

${\displaystyle C=DN(d_{+})F-DN(d_{-})K,}$

where ${\displaystyle DN(d_{+})F}$ is the present value of an asset-or-nothing call and ${\displaystyle DN(d_{-})K}$ is the present value of a cash-or-nothing call. The *D* factor is for discounting, because the expiration date is in future, and removing it changes *present* value to *future* value (value at expiry). Thus ${\displaystyle N(d_{+})~F}$ is the future value of an asset-or-nothing call and ${\displaystyle N(d_{-})~K}$ is the future value of a cash-or-nothing call. In risk-neutral terms, these are the [expected value](https://en.wikipedia.org/wiki/Expected_value "Expected value") of the asset and the expected value of the cash in the risk-neutral measure.

A naive, and slightly incorrect, interpretation of these terms is that ${\displaystyle N(d_{+})F}$ is the probability of the option expiring in the money ${\displaystyle N(d_{+})}$, multiplied by the value of the underlying at expiry *F,* while ${\displaystyle N(d_{-})K}$ is the probability of the option expiring in the money ${\displaystyle N(d_{-}),}$ multiplied by the value of the cash at expiry *K.* This interpretation is incorrect because either both binaries expire in the money or both expire out of the money (either cash is exchanged for the asset or it is not), but the probabilities ${\displaystyle N(d_{+})}$ and ${\displaystyle N(d_{-})}$ are not equal. In fact, ${\displaystyle d_{\pm }}$ can be interpreted as measures of [moneyness](https://en.wikipedia.org/wiki/Moneyness "Moneyness") (in standard deviations) and ${\displaystyle N(d_{\pm })}$ as probabilities of expiring ITM (*percent moneyness*), in the respective [numéraire](https://en.wikipedia.org/wiki/Num%C3%A9raire "Numéraire"), as discussed below. Simply put, the interpretation of the cash option, ${\displaystyle N(d_{-})K}$, is correct, as the value of the cash is independent of movements of the underlying asset, and thus can be interpreted as a simple product of "probability times value", while the ${\displaystyle N(d_{+})F}$ is more complicated, as the probability of expiring in the money and the value of the asset at expiry are not independent.[^22] More precisely, the value of the asset at expiry is variable in terms of cash, but is constant in terms of the asset itself (a fixed quantity of the asset), and thus these quantities are independent if one changes numéraire to the asset rather than cash.

If one uses spot *S* instead of forward *F,* in ${\displaystyle d_{\pm }}$ instead of the ${\textstyle {\frac {1}{2}}\sigma ^{2}}$ term there is ${\textstyle \left(r\pm {\frac {1}{2}}\sigma ^{2}\right)\tau ,}$ which can be interpreted as a drift factor (in the risk-neutral measure for appropriate numéraire). The use of *d* <sub>−</sub> for moneyness rather than the standardized moneyness ${\textstyle m={\frac {1}{\sigma {\sqrt {\tau }}}}\ln \left({\frac {F}{K}}\right)}$ – in other words, the reason for the ${\textstyle {\frac {1}{2}}\sigma ^{2}}$ factor – is due to the difference between the median and mean of the [log-normal distribution](https://en.wikipedia.org/wiki/Log-normal_distribution "Log-normal distribution"); it is the same factor as in [Itō's lemma applied to geometric Brownian motion](https://en.wikipedia.org/wiki/It%C5%8D%27s_lemma#Geometric_Brownian_motion "Itō's lemma"). In addition, another way to see that the naive interpretation is incorrect is that replacing ${\displaystyle N(d_{+})}$ by ${\displaystyle N(d_{-})}$ in the formula yields a negative value for out-of-the-money call options.[^22]<sup><span title="Page / location: 6">: 6</span></sup>

In detail, the terms ${\displaystyle N(d_{+}),N(d_{-})}$ are the *probabilities of the option expiring in-the-money* under the equivalent exponential [martingale](https://en.wikipedia.org/wiki/Martingale_\(probability_theory\) "Martingale (probability theory)") probability measure (numéraire=stock) and the equivalent martingale probability measure (numéraire=risk free asset), respectively.[^22] The risk neutral probability density for the stock price ${\displaystyle S_{T}\in (0,\infty )}$ is

${\displaystyle p(S,T)={\frac {N^{\prime }[d_{-}(S_{T})]}{S_{T}\sigma {\sqrt {T}}}}}$

where ${\displaystyle d_{-}=d_{-}(K)}$ is defined as above.

Specifically, ${\displaystyle N(d_{-})}$ is the probability that the call will be exercised provided one assumes that the asset drift is the risk-free rate. ${\displaystyle N(d_{+})}$, however, does not lend itself to a simple probability interpretation. ${\displaystyle SN(d_{+})}$ is correctly interpreted as the present value, using the risk-free interest rate, of the expected asset price at expiration, [given that](https://en.wikipedia.org/wiki/Conditional_probability "Conditional probability") the asset price at expiration is above the exercise price.[^23] For related discussion – and graphical representation – see [Datar–Mathews method for real option valuation](https://en.wikipedia.org/wiki/Datar%E2%80%93Mathews_method_for_real_option_valuation#Transformation_to_the_Black%E2%80%93Scholes_Option "Datar–Mathews method for real option valuation").

The equivalent martingale probability measure is also called the [risk-neutral probability measure](https://en.wikipedia.org/wiki/Financial_mathematics#Derivatives_pricing:_the_Q_world "Financial mathematics"). Note that both of these are *probabilities* in a [measure theoretic](https://en.wikipedia.org/wiki/Measure_\(mathematics\) "Measure (mathematics)") sense, and neither of these is the true probability of expiring in-the-money under the [real probability measure](https://en.wikipedia.org/wiki/Financial_mathematics#Risk_and_portfolio_management:_the_P_world "Financial mathematics"). To calculate the probability under the real ("physical") probability measure, additional information is required—the drift term in the physical measure, or equivalently, the [market price of risk](https://en.wikipedia.org/wiki/Market_price_of_risk "Market price of risk").

#### Derivations

A standard derivation for solving the Black–Scholes PDE is given in the article [Black–Scholes equation](https://en.wikipedia.org/wiki/Black%E2%80%93Scholes_equation "Black–Scholes equation").

The [Feynman–Kac formula](https://en.wikipedia.org/wiki/Feynman%E2%80%93Kac_formula "Feynman–Kac formula") says that the solution to this type of PDE, when discounted appropriately, is actually a [martingale](https://en.wikipedia.org/wiki/Martingale_\(probability_theory\) "Martingale (probability theory)"). Thus the option price is the expected value of the discounted payoff of the option. Computing the option price via this expectation is the [risk neutrality](https://en.wikipedia.org/wiki/Risk_neutrality "Risk neutrality") approach and can be done without knowledge of PDEs.[^22] Note the [expectation](https://en.wikipedia.org/wiki/Expected_value "Expected value") of the option payoff is not done under the real world [probability measure](https://en.wikipedia.org/wiki/Probability_measure "Probability measure"), but an artificial [risk-neutral measure](https://en.wikipedia.org/wiki/Risk-neutral_measure "Risk-neutral measure"), which differs from the real world measure. For the underlying logic see section ["risk neutral valuation"](https://en.wikipedia.org/wiki/Rational_pricing#Risk_neutral_valuation "Rational pricing") under [Rational pricing](https://en.wikipedia.org/wiki/Rational_pricing "Rational pricing") as well as section ["Derivatives pricing: the Q world](https://en.wikipedia.org/wiki/Mathematical_finance#Derivatives_pricing:_the_Q_world "Mathematical finance") " under [Mathematical finance](https://en.wikipedia.org/wiki/Mathematical_finance "Mathematical finance"); for details, once again, see [Hull](https://en.wikipedia.org/wiki/John_C._Hull_\(economist\) "John C. Hull (economist)").[^24]<sup><span title="Page / location: 307–309">: 307–309</span></sup>

## The Options Greeks

" [The Greeks](https://en.wikipedia.org/wiki/Greeks_\(finance\) "Greeks (finance)") " measure the sensitivity of the value of a derivative product or a financial portfolio to changes in parameter values while holding the other parameters fixed. They are [partial derivatives](https://en.wikipedia.org/wiki/Partial_derivatives "Partial derivatives") of the price with respect to the parameter values. One Greek, "gamma" (as well as others not listed here) is a partial derivative of another Greek, "delta" in this case.

The Greeks are important not only in the mathematical theory of finance, but also for those actively trading. Financial institutions will typically set (risk) limit values for each of the Greeks that their traders must not exceed.[^25]

Delta is the most important Greek since this usually confers the largest risk. Many traders will zero their delta at the end of the day if they are not speculating on the direction of the market and following a delta-neutral hedging approach as defined by Black–Scholes. When a trader seeks to establish an effective delta-hedge for a portfolio, the trader may also seek to neutralize the portfolio's [gamma](https://en.wikipedia.org/wiki/Greeks_\(finance\)#Gamma "Greeks (finance)"), as this will ensure that the hedge will be effective over a wider range of underlying price movements.

The Greeks for Black–Scholes are given in [closed form](https://en.wikipedia.org/wiki/Closed-form_expression "Closed-form expression") below. They can be obtained by [differentiation](https://en.wikipedia.org/wiki/Differentiation_\(mathematics\) "Differentiation (mathematics)") of the Black–Scholes formula.

<table><tbody><tr><th colspan="2"></th><th>Call</th><th>Put</th></tr><tr><th>Delta</th><th><math>{\displaystyle {\frac {\partial V}{\partial S}}}</math></th><td><math>{\displaystyle N(d_{+})\,}</math></td><td><math>{\displaystyle -N(-d_{+})=N(d_{+})-1\,}</math></td></tr><tr><th>Gamma</th><th><math>{\displaystyle {\frac {\partial ^{2}V}{\partial S^{2}}}}</math></th><td colspan="2"><math>{\displaystyle {\frac {N'(d_{+})}{S\sigma {\sqrt {T-t}}}}\,}</math></td></tr><tr><th>Vega</th><th><math>{\displaystyle {\frac {\partial V}{\partial \sigma }}}</math></th><td colspan="2"><math>{\displaystyle SN'(d_{+}){\sqrt {T-t}}\,}</math></td></tr><tr><th>Theta</th><th><math>{\displaystyle {\frac {\partial V}{\partial t}}}</math></th><td><math>{\displaystyle -{\frac {SN'(d_{+})\sigma }{2{\sqrt {T-t}}}}-rKe^{-r(T-t)}N(d_{-})\,}</math></td><td><math>{\displaystyle -{\frac {SN'(d_{+})\sigma }{2{\sqrt {T-t}}}}+rKe^{-r(T-t)}N(-d_{-})\,}</math></td></tr><tr><th>Rho</th><th><math>{\displaystyle {\frac {\partial V}{\partial r}}}</math></th><td><math>{\displaystyle K(T-t)e^{-r(T-t)}N(d_{-})\,}</math></td><td><math>{\displaystyle -K(T-t)e^{-r(T-t)}N(-d_{-})\,}</math></td></tr></tbody></table>

Note that the gamma and vega are the same value for calls and puts. This can be seen directly from [put–call parity](https://en.wikipedia.org/wiki/Put%E2%80%93call_parity "Put–call parity"), since the difference of a put and a call is a forward, which is linear in *S* and independent of *σ* (so a forward has zero gamma and zero vega).

In practice, some sensitivities are usually quoted in scaled-down terms, to match the scale of likely changes in the parameters. For example, rho is often reported divided by 10,000 (1 basis point rate change), vega by 100 (1 vol point change), and theta by 365 or 252 (1 day decay based on either calendar days or trading days per year).

Note that "Vega" is not a letter in the Greek alphabet; the name arises from misreading the Greek letter [nu](https://en.wikipedia.org/wiki/Nu_\(Greek\) "Nu (Greek)") (variously rendered as ${\displaystyle \nu }$, ν, and ν) as a V.

## Extensions of the model

The above model can be extended for variable (but deterministic) rates and volatilities. The model may also be used to value European options on instruments paying dividends. In this case, closed-form solutions are available if the dividend is a known proportion of the stock price. [American options](https://en.wikipedia.org/wiki/Option_style "Option style") and options on stocks paying a known cash dividend (in the short term, more realistic than a proportional dividend) are more difficult to value, and a choice of solution techniques is available (for example [lattices](https://en.wikipedia.org/wiki/Lattice_model_\(finance\) "Lattice model (finance)") and [grids](https://en.wikipedia.org/wiki/Finite_difference_methods_for_option_pricing "Finite difference methods for option pricing")).

### Instruments paying continuous yield dividends

For options on indices, it is reasonable to make the simplifying assumption that dividends are paid continuously, and that the dividend amount is proportional to the level of the index.

The dividend payment paid over the time period ${\displaystyle [t,t+dt]}$ is then modelled as:

${\displaystyle qS_{t}\,dt}$

for some constant ${\displaystyle q}$ (the [dividend yield](https://en.wikipedia.org/wiki/Dividend_yield "Dividend yield")).

Under this formulation the arbitrage-free price implied by the Black–Scholes model can be shown to be:

${\displaystyle C(S_{t},t)=e^{-r(T-t)}[FN(d_{1})-KN(d_{2})]\,}$

and

${\displaystyle P(S_{t},t)=e^{-r(T-t)}[KN(-d_{2})-FN(-d_{1})]\,}$

where now

${\displaystyle F=S_{t}e^{(r-q)(T-t)}\,}$

is the modified forward price that occurs in the terms ${\displaystyle d_{1},d_{2}}$:

${\displaystyle d_{1}={\frac {1}{\sigma {\sqrt {T-t}}}}\left[\ln \left({\frac {S_{t}}{K}}\right)+\left(r-q+{\frac {1}{2}}\sigma ^{2}\right)(T-t)\right]}$

and

${\displaystyle d_{2}=d_{1}-\sigma {\sqrt {T-t}}={\frac {1}{\sigma {\sqrt {T-t}}}}\left[\ln \left({\frac {S_{t}}{K}}\right)+\left(r-q-{\frac {1}{2}}\sigma ^{2}\right)(T-t)\right]}$.[^26]

### Instruments paying discrete proportional dividends

It is also possible to extend the Black–Scholes framework to options on instruments paying discrete proportional dividends. This is useful when the option is struck on a single stock.

A typical model is to assume that a proportion ${\displaystyle \delta }$ of the stock price is paid out at pre-determined times ${\displaystyle t_{1},t_{2},\ldots ,t_{n}}$. The price of the stock is then modelled as:

${\displaystyle S_{t}=S_{0}(1-\delta )^{n(t)}e^{ut+\sigma W_{t}}}$

where ${\displaystyle n(t)}$ is the number of dividends that have been paid by time ${\displaystyle t}$.

The price of a call option on such a stock is again:

${\displaystyle C(S_{0},T)=e^{-rT}[FN(d_{1})-KN(d_{2})]\,}$

where now

${\displaystyle F=S_{0}(1-\delta )^{n(T)}e^{rT}\,}$

is the forward price for the dividend paying stock.

### American options

The problem of finding the price of an [American option](https://en.wikipedia.org/wiki/American_option "American option") is related to the [optimal stopping](https://en.wikipedia.org/wiki/Optimal_stopping "Optimal stopping") problem of finding the time to execute the option. Since the American option can be exercised at any time before the expiration date, the Black–Scholes equation becomes a variational inequality of the form:

${\displaystyle {\frac {\partial V}{\partial t}}+{\frac {1}{2}}\sigma ^{2}S^{2}{\frac {\partial ^{2}V}{\partial S^{2}}}+rS{\frac {\partial V}{\partial S}}-rV\leq 0}$ [^27]

together with ${\displaystyle V(S,t)\geq H(S)}$ where ${\displaystyle H(S)}$ denotes the payoff at stock price ${\displaystyle S}$ and the terminal condition: ${\displaystyle V(S,T)=H(S)}$.

In general this inequality does not have a closed form solution, though an American call with no dividends is equal to a European call and the Roll–Geske–Whaley method provides a solution for an American call with one dividend;[^28] [^29] see also [Black's approximation](https://en.wikipedia.org/wiki/Black%27s_approximation "Black's approximation").

Barone-Adesi and Whaley [^30] is a further approximation formula. Here, the stochastic differential equation (which is valid for the value of any derivative) is split into two components: the European option value and the early exercise premium. With some assumptions, a [quadratic equation](https://en.wikipedia.org/wiki/Quadratic_equation "Quadratic equation") that approximates the solution for the latter is then obtained. This solution involves [finding the critical value](https://en.wikipedia.org/wiki/Root-finding_algorithms "Root-finding algorithms"), ${\displaystyle s*}$, such that one is indifferent between early exercise and holding to maturity.[^31] [^32]

Bjerksund and Stensland [^33] provide an approximation based on an exercise strategy corresponding to a trigger price. Here, if the underlying asset price is greater than or equal to the trigger price it is optimal to exercise, and the value must equal ${\displaystyle S-X}$, otherwise the option "boils down to: (i) a European [up-and-out](https://en.wikipedia.org/wiki/Barrier_option#Types "Barrier option") call option... and (ii) a rebate that is received at the knock-out date if the option is knocked out prior to the maturity date". The formula is readily modified for the valuation of a put option, using [put–call parity](https://en.wikipedia.org/wiki/Put%E2%80%93call_parity "Put–call parity"). This approximation is computationally inexpensive and the method is fast, with evidence indicating that the approximation may be more accurate in pricing long dated options than Barone-Adesi and Whaley.[^34]

#### Perpetual put

Despite the lack of a general analytical solution for American put options, it is possible to derive such a formula for the case of a perpetual option – meaning that the option never expires (i.e., ${\displaystyle T\rightarrow \infty }$).[^35] In this case, the time decay of the option is equal to zero, which leads to the Black–Scholes PDE becoming an ODE:
$$
{\displaystyle {1 \over {2}}\sigma ^{2}S^{2}{d^{2}V \over {dS^{2}}}+(r-q)S{dV \over {dS}}-rV=0}
$$
 Let ${\displaystyle S_{-}}$ denote the lower exercise boundary, below which it is optimal to exercise the option. The boundary conditions are:
$$
{\displaystyle V(S_{-})=K-S_{-},\quad {dV \over {dS}}(S_{-})=-1,\quad V(S)\leq K}
$$
 The solutions to the ODE are a linear combination of any two linearly independent solutions:
$$
{\displaystyle V(S)=A_{1}S^{\lambda _{1}}+A_{2}S^{\lambda _{2}}}
$$
 For ${\displaystyle S_{-}\leq S}$, substitution of this solution into the ODE for ${\displaystyle i={1,2}}$ yields:
$$
{\displaystyle \left[{1 \over {2}}\sigma ^{2}\lambda _{i}(\lambda _{i}-1)+(r-q)\lambda _{i}-r\right]S^{\lambda _{i}}=0}
$$
 Rearranging the terms gives:
$$
{\displaystyle {1 \over {2}}\sigma ^{2}\lambda _{i}^{2}+\left(r-q-{1 \over {2}}\sigma ^{2}\right)\lambda _{i}-r=0}
$$
 Using the [quadratic formula](https://en.wikipedia.org/wiki/Quadratic_formula "Quadratic formula"), the solutions for ${\displaystyle \lambda _{i}}$ are:
$$
{\displaystyle {\begin{aligned}\lambda _{1}&={-\left(r-q-{1 \over {2}}\sigma ^{2}\right)+{\sqrt {\left(r-q-{1 \over {2}}\sigma ^{2}\right)^{2}+2\sigma ^{2}r}} \over {\sigma ^{2}}}\\\lambda _{2}&={-\left(r-q-{1 \over {2}}\sigma ^{2}\right)-{\sqrt {\left(r-q-{1 \over {2}}\sigma ^{2}\right)^{2}+2\sigma ^{2}r}} \over {\sigma ^{2}}}\end{aligned}}}
$$
 In order to have a finite solution for the perpetual put, since the boundary conditions imply upper and lower finite bounds on the value of the put, it is necessary to set ${\displaystyle A_{1}=0}$, leading to the solution ${\displaystyle V(S)=A_{2}S^{\lambda _{2}}}$. From the first boundary condition, it is known that:
$$
{\displaystyle V(S_{-})=A_{2}(S_{-})^{\lambda _{2}}=K-S_{-}\implies A_{2}={K-S_{-} \over {(S_{-})^{\lambda _{2}}}}}
$$
 Therefore, the value of the perpetual put becomes:
$$
{\displaystyle V(S)=(K-S_{-})\left({S \over {S_{-}}}\right)^{\lambda _{2}}}
$$
 The second boundary condition yields the location of the lower exercise boundary:
$$
{\displaystyle {dV \over {dS}}(S_{-})=\lambda _{2}{K-S_{-} \over {S_{-}}}=-1\implies S_{-}={\lambda _{2}K \over {\lambda _{2}-1}}}
$$
 To conclude, for ${\textstyle S\geq S_{-}={\lambda _{2}K \over {\lambda _{2}-1}}}$, the perpetual American put option is worth:
$$
{\displaystyle V(S)={K \over {1-\lambda _{2}}}\left({\lambda _{2}-1 \over {\lambda _{2}}}\right)^{\lambda _{2}}\left({S \over {K}}\right)^{\lambda _{2}}}
$$

### Binary options

By solving the Black–Scholes differential equation with the [Heaviside function](https://en.wikipedia.org/wiki/Heaviside_function "Heaviside function") as a boundary condition, one ends up with the pricing of options that pay one unit above some predefined strike price and nothing below.[^36]

In fact, the Black–Scholes formula for the price of a vanilla call option (or put option) can be interpreted by decomposing a call option into an asset-or-nothing call option minus a cash-or-nothing call option, and similarly for a put—the binary options are easier to analyze, and correspond to the two terms in the Black–Scholes formula.

#### Cash-or-nothing call

This pays out one unit of cash if the spot is above the strike at maturity. Its value is given by:

${\displaystyle C=e^{-r(T-t)}N(d_{2}).\,}$

#### Cash-or-nothing put

This pays out one unit of cash if the spot is below the strike at maturity. Its value is given by:

${\displaystyle P=e^{-r(T-t)}N(-d_{2}).\,}$

#### Asset-or-nothing call

This pays out one unit of asset if the spot is above the strike at maturity. Its value is given by:

${\displaystyle C=Se^{-q(T-t)}N(d_{1}).\,}$

#### Asset-or-nothing put

This pays out one unit of asset if the spot is below the strike at maturity. Its value is given by:

${\displaystyle P=Se^{-q(T-t)}N(-d_{1}),}$

#### Foreign Exchange (FX)

Denoting by *S* the FOR/DOM exchange rate (i.e., 1 unit of foreign currency is worth S units of domestic currency) one can observe that paying out 1 unit of the domestic currency if the spot at maturity is above or below the strike is exactly like a cash-or nothing call and put respectively. Similarly, paying out 1 unit of the foreign currency if the spot at maturity is above or below the strike is exactly like an asset-or nothing call and put respectively. Hence by taking ${\displaystyle r_{f}}$, the foreign interest rate, ${\displaystyle r_{d}}$, the domestic interest rate, and the rest as above, the following results can be obtained:

In the case of a digital call (this is a call FOR/put DOM) paying out one unit of the domestic currency gotten as present value:

${\displaystyle C=e^{-r_{d}T}N(d_{2})\,}$

In the case of a digital put (this is a put FOR/call DOM) paying out one unit of the domestic currency gotten as present value:

${\displaystyle P=e^{-r_{d}T}N(-d_{2})\,}$

In the case of a digital call (this is a call FOR/put DOM) paying out one unit of the foreign currency gotten as present value:

${\displaystyle C=Se^{-r_{f}T}N(d_{1})\,}$

In the case of a digital put (this is a put FOR/call DOM) paying out one unit of the foreign currency gotten as present value:

${\displaystyle P=Se^{-r_{f}T}N(-d_{1})\,}$

#### Skew

In the standard Black–Scholes model, one can interpret the premium of the binary option in the risk-neutral world as the expected value = probability of being in-the-money \* unit, discounted to the present value. The Black–Scholes model relies on symmetry of distribution and ignores the [skewness](https://en.wikipedia.org/wiki/Skewness "Skewness") of the distribution of the asset. Market makers adjust for such skewness by, instead of using a single standard deviation for the underlying asset ${\displaystyle \sigma }$ across all strikes, incorporating a variable one ${\displaystyle \sigma (K)}$ where volatility depends on strike price, thus incorporating the [volatility skew](https://en.wikipedia.org/wiki/Volatility_skew "Volatility skew") into account. The skew matters because it affects the binary considerably more than the regular options.

A binary call option is, at long expirations, similar to a tight call spread using two vanilla options. One can model the value of a binary cash-or-nothing option, *C*, at strike *K*, as an infinitesimally tight spread, where ${\displaystyle C_{v}}$ is a vanilla European call:[^37] [^38]

${\displaystyle C=\lim _{\epsilon \to 0}{\frac {C_{v}(K-\epsilon )-C_{v}(K)}{\epsilon }}}$

Thus, the value of a binary call is the negative of the [derivative](https://en.wikipedia.org/wiki/Derivative "Derivative") of the price of a vanilla call with respect to strike price:

${\displaystyle C=-{\frac {dC_{v}}{dK}}}$

When one takes volatility skew into account, ${\displaystyle \sigma }$ is a function of ${\displaystyle K}$:

${\displaystyle C=-{\frac {dC_{v}(K,\sigma (K))}{dK}}=-{\frac {\partial C_{v}}{\partial K}}-{\frac {\partial C_{v}}{\partial \sigma }}{\frac {\partial \sigma }{\partial K}}}$

The first term is equal to the premium of the binary option ignoring skew:

${\displaystyle -{\frac {\partial C_{v}}{\partial K}}=-{\frac {\partial (SN(d_{1})-Ke^{-r(T-t)}N(d_{2}))}{\partial K}}=e^{-r(T-t)}N(d_{2})=C_{\text{no skew}}}$

${\displaystyle {\frac {\partial C_{v}}{\partial \sigma }}}$ is the [Vega](https://en.wikipedia.org/wiki/Greeks_\(finance\) "Greeks (finance)") of the vanilla call; ${\displaystyle {\frac {\partial \sigma }{\partial K}}}$ is sometimes called the "skew slope" or just "skew". If the skew is typically negative, the value of a binary call will be higher when taking skew into account.

${\displaystyle C=C_{\text{no skew}}-{\text{Vega}}_{v}\cdot {\text{Skew}}}$

#### Relationship to vanilla options' Greeks

Since a binary call is a mathematical derivative of a vanilla call with respect to strike, the price of a binary call has the same shape as the delta of a vanilla call, and the delta of a binary call has the same shape as the gamma of a vanilla call.

## Black–Scholes in practice

![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Crowd_outside_nyse.jpg/250px-Crowd_outside_nyse.jpg)

The normality assumption of the Black–Scholes model does not capture extreme movements such as stock market crashes.

The assumptions of the Black–Scholes model are not all empirically valid. The model is widely employed as a useful approximation to reality, but proper application requires understanding its limitations – blindly following the model exposes the user to unexpected risk.[^39] Among the most significant limitations are:

- the underestimation of extreme moves, yielding [tail risk](https://en.wikipedia.org/wiki/Tail_risk "Tail risk"), which can be hedged with [out-of-the-money](https://en.wikipedia.org/wiki/Out-of-the-money "Out-of-the-money") options;
- the assumption of instant, cost-less trading, yielding [liquidity risk](https://en.wikipedia.org/wiki/Liquidity_risk "Liquidity risk"), which is difficult to hedge;
- the assumption of a stationary process, yielding [volatility risk](https://en.wikipedia.org/wiki/Volatility_risk "Volatility risk"), which can be hedged with volatility hedging;
- the assumption of continuous time and continuous trading, yielding gap risk, which can be hedged with Gamma hedging;
- the model tends to underprice deep out-of-the-money options and overprice deep in-the-money options.[^40]

In short, while in the Black–Scholes model one can perfectly hedge options by simply [Delta hedging](https://en.wikipedia.org/wiki/Delta_hedging "Delta hedging"), in practice there are many other sources of risk.

Results using the Black–Scholes model differ from real world prices because of simplifying assumptions of the model. One significant limitation is that in reality security prices do not follow a strict stationary [log-normal](https://en.wikipedia.org/wiki/Log-normal_distribution "Log-normal distribution") process, nor is the risk-free interest actually known (and is not constant over time). The variance has been observed to be non-constant leading to models such as [GARCH](https://en.wikipedia.org/wiki/GARCH "GARCH") to model volatility changes. Pricing discrepancies between empirical and the Black–Scholes model have long been observed in options that are far [out-of-the-money](https://en.wikipedia.org/wiki/Out-of-the-money "Out-of-the-money"), corresponding to extreme price changes; such events would be very rare if returns were lognormally distributed, but are observed much more often in practice.

Nevertheless, Black–Scholes pricing is widely used in practice,[^3]<sup><span title="Page / location: 751">: 751</span> </sup> [^41] because it is:

- easy to calculate
- a useful approximation, particularly when analyzing the direction in which prices move when crossing critical points
- a robust basis for more refined models
- reversible, as the model's original output, price, can be used as an input and one of the other variables solved for; the implied volatility calculated in this way is often used to quote option prices (that is, as a *quoting convention*).

The first point is self-evidently useful. The others can be further discussed:

Useful approximation: although volatility is not constant, results from the model are often helpful in setting up hedges in the correct proportions to minimize risk. Even when the results are not completely accurate, they serve as a first approximation to which adjustments can be made.

Basis for more refined models: The Black–Scholes model is *robust* in that it can be adjusted to deal with some of its failures. Rather than considering some parameters (such as volatility or interest rates) as *constant,* one considers them as *variables,* and thus added sources of risk. This is reflected in the [Greeks](https://en.wikipedia.org/wiki/Greeks_\(finance\) "Greeks (finance)") (the change in option value for a change in these parameters, or equivalently the partial derivatives with respect to these variables), and hedging these Greeks mitigates the risk caused by the non-constant nature of these parameters. Other defects cannot be mitigated by modifying the model, however, notably tail risk and liquidity risk, and these are instead managed outside the model, chiefly by minimizing these risks and by [stress testing](https://en.wikipedia.org/wiki/Stress_testing "Stress testing").

Explicit modeling: this feature means that, rather than *assuming* a volatility *a priori* and computing prices from it, one can use the model to solve for volatility, which gives the [implied volatility](https://en.wikipedia.org/wiki/Implied_volatility "Implied volatility") of an option at given prices, durations and exercise prices. Solving for volatility over a given set of durations and strike prices, one can construct an [implied volatility surface](https://en.wikipedia.org/wiki/Volatility_surface "Volatility surface"). In this application of the Black–Scholes model, a [coordinate transformation](https://en.wikipedia.org/wiki/Coordinate_transformation "Coordinate transformation") from the *price domain* to the *volatility domain* is obtained. Rather than quoting option prices in terms of dollars per unit (which are hard to compare across strikes, durations and coupon frequencies), option prices can thus be quoted in terms of implied volatility, which leads to trading of volatility in option markets.

### The volatility smile

One of the attractive features of the Black–Scholes model is that the parameters in the model other than the volatility (the time to maturity, the strike, the risk-free interest rate, and the current underlying price) are unequivocally observable. All other things being equal, an option's theoretical value is a [monotonic increasing function](https://en.wikipedia.org/wiki/Monotonic_function "Monotonic function") of implied volatility.

By computing the implied volatility for traded options with different strikes and maturities, the Black–Scholes model can be tested. If the Black–Scholes model held, then the implied volatility for a particular stock would be the same for all strikes and maturities. In practice, the [volatility surface](https://en.wikipedia.org/wiki/Volatility_smile "Volatility smile") (the 3D graph of implied volatility against strike and maturity) is not flat.

The typical shape of the implied volatility curve for a given maturity depends on the underlying instrument. Equities tend to have skewed curves: compared to [at-the-money](https://en.wikipedia.org/wiki/At-the-money "At-the-money"), implied volatility is substantially higher for low strikes, and slightly lower for high strikes. Currencies tend to have more symmetrical curves, with implied volatility lowest at-the-money, and higher volatilities in both wings. Commodities often have the reverse behavior to equities, with higher implied volatility for higher strikes.

Despite the existence of the volatility smile (and the violation of all the other assumptions of the Black–Scholes model), the Black–Scholes PDE and Black–Scholes formula are still used extensively in practice. A typical approach is to regard the volatility surface as a fact about the market, and use an implied volatility from it in a Black–Scholes valuation model. This has been described as using "the wrong number in the wrong formula to get the right price".[^42] This approach also gives usable values for the hedge ratios (the Greeks). Even when more advanced models are used, traders prefer to think in terms of Black–Scholes implied volatility as it allows them to evaluate and compare options of different maturities, strikes, and so on. For a discussion as to the various alternative approaches developed here, see [Financial economics § Challenges and criticism](https://en.wikipedia.org/wiki/Financial_economics#Challenges_and_criticism "Financial economics").

### Valuing bond options

Black–Scholes cannot be applied directly to [bond securities](https://en.wikipedia.org/wiki/Bond_\(finance\) "Bond (finance)") because of [pull-to-par](https://en.wikipedia.org/wiki/Pull_to_par "Pull to par"). As the bond reaches its maturity date, all of the prices involved with the bond become known, thereby decreasing its volatility, and the simple Black–Scholes model does not reflect this process. A large number of extensions to Black–Scholes, beginning with the [Black model](https://en.wikipedia.org/wiki/Black_model "Black model"), have been used to deal with this phenomenon.[^43] See [Bond option § Valuation](https://en.wikipedia.org/wiki/Bond_option#Valuation "Bond option").

### Interest rate curve

In practice, interest rates are not constant—they vary by tenor (coupon frequency), giving an [interest rate curve](https://en.wikipedia.org/wiki/Yield_curve "Yield curve") which may be interpolated to pick an appropriate rate to use in the Black–Scholes formula. Another consideration is that interest rates vary over time. This volatility may make a significant contribution to the price, especially of long-dated options. This is simply like the interest rate and bond price relationship which is inversely related.

### Short stock rate

Taking a [short stock](https://en.wikipedia.org/wiki/Short_\(finance\) "Short (finance)") position, as inherent in the derivation, is not typically free of cost; equivalently, it is possible to lend out a long stock position [for a small fee](https://en.wikipedia.org/wiki/Short_\(finance\)#Short_selling_terms "Short (finance)"). In either case, this can be treated as a continuous dividend for the purposes of a Black–Scholes valuation, provided that there is no glaring asymmetry between the short stock borrowing cost and the long stock lending income.

## Criticism and comments

Espen Gaarder Haug and [Nassim Nicholas Taleb](https://en.wikipedia.org/wiki/Nassim_Nicholas_Taleb "Nassim Nicholas Taleb") argue that the Black–Scholes model merely recasts existing widely used models in terms of practically impossible "dynamic hedging" rather than "risk", to make them more compatible with mainstream [neoclassical economic](https://en.wikipedia.org/wiki/Neoclassical_economics "Neoclassical economics") theory.[^44] They also assert that Boness in 1964 had already published a formula that is "actually identical" to the Black–Scholes call option pricing equation.[^45] [Edward Thorp](https://en.wikipedia.org/wiki/Edward_O._Thorp "Edward O. Thorp") also claims to have guessed the Black–Scholes formula in 1967 but kept it to himself to make money for his investors.[^46] [Emanuel Derman](https://en.wikipedia.org/wiki/Emanuel_Derman "Emanuel Derman") and Taleb have also criticized dynamic hedging and state that a number of researchers had put forth similar models prior to Black and Scholes.[^47] In response, [Paul Wilmott](https://en.wikipedia.org/wiki/Paul_Wilmott "Paul Wilmott") has defended the model.[^41] [^48]

In his 2008 letter to the shareholders of [Berkshire Hathaway](https://en.wikipedia.org/wiki/Berkshire_Hathaway "Berkshire Hathaway"), [Warren Buffett](https://en.wikipedia.org/wiki/Warren_Buffett "Warren Buffett") wrote: "I believe the Black–Scholes formula, even though it is the standard for establishing the dollar liability for options, produces strange results when the long-term variety are being valued... The Black–Scholes formula has approached the status of holy writ in finance... If the formula is applied to extended time periods, however, it can produce absurd results. In fairness, Black and Scholes almost certainly understood this point well. But their devoted followers may be ignoring whatever caveats the two men attached when they first unveiled the formula." [^49]

British mathematician [Ian Stewart](https://en.wikipedia.org/wiki/Ian_Stewart_\(mathematician\) "Ian Stewart (mathematician)"), author of the 2012 book entitled *[In Pursuit of the Unknown: 17 Equations That Changed the World](https://en.wikipedia.org/wiki/In_Pursuit_of_the_Unknown:_17_Equations_That_Changed_the_World "In Pursuit of the Unknown: 17 Equations That Changed the World")*,[^50] [^51] said that Black–Scholes had "underpinned massive economic growth" and the "international financial system was trading derivatives valued at one quadrillion dollars per year" by 2007. He said that the Black–Scholes equation was the "mathematical justification for the trading"—and therefore—"one ingredient in a rich stew of financial irresponsibility, political ineptitude, perverse incentives and lax regulation" that contributed to the [2008 financial crisis](https://en.wikipedia.org/wiki/2008_financial_crisis "2008 financial crisis").[^52] He clarified that "the equation itself wasn't the real problem", but its abuse in the financial industry.[^52]

[^1]: Although the original model assumed no dividends, trivial extensions to the model can accommodate a continuous dividend yield factor.

[^2]: ["Scholes on merriam-webster.com"](http://www.merriam-webster.com/dictionary/scholes). Retrieved March 26, 2012.

[^3]: [Bodie, Zvi](https://en.wikipedia.org/wiki/Zvi_Bodie "Zvi Bodie"); Alex Kane; Alan J. Marcus (2008). *Investments* (7th ed.). New York: McGraw-Hill/Irwin. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-07-326967-2](https://en.wikipedia.org/wiki/Special:BookSources/978-0-07-326967-2 "Special:BookSources/978-0-07-326967-2").

[^4]: Bachelier, Louis (1900). [*Théorie de la Spéculation*](http://www.radio.goldseek.com/bachelier-thesis-theory-of-speculation-en.pdf) \[*Theory of Speculation*\] (PDF) (in French). Translated by May (Series 3, 17 ed.). France: Annales Scientifiques de l'École Normale Supérieure (published 2011). pp. 21–86.

[^5]: Houstecky, Petr. ["Black-Scholes Model History and Key Papers"](https://www.macroption.com/black-scholes-history/#ref-4). *Macroption*. [Archived](https://web.archive.org/web/20240614192845/https://www.macroption.com/black-scholes-history/) from the original on Jun 14, 2024. Retrieved Oct 3, 2024.

[^6]: Sprenkle, C.M. (1961). ["Warrant prices as indicators of expectations and preferences"](https://archive.org/details/sim_yale-economic-essays_fall-1961_1_2/page/178). *Yale Economic Essays*. **1** (2): 178–231.

[^7]: Boness, James (1964). ["Elements of a Theory of Stock-Option Value"](https://www.journals.uchicago.edu/doi/abs/10.1086/258885). *Journal of Political Economy*. **72** (2): 163–175. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1086/258885](https://doi.org/10.1086%2F258885) – via University of Chicago Press.

[^8]: Samuelson, Paul (1965). ["Rational Theory of Warrant Pricing"](https://www.proquest.com/docview/214192591). *Industrial Management Review*. **6** (2): 13–31. [ProQuest](https://en.wikipedia.org/wiki/ProQuest "ProQuest") [214192591](https://www.proquest.com/docview/214192591).

[^9]: Samuelson, Paul; Merton, Robert (1969). ["A Complete Model of Warrant Pricing that Maximizes Utility"](https://www.proquest.com/docview/214192177). *Industrial Management Review*. **10** (2): 17–46. [ProQuest](https://en.wikipedia.org/wiki/ProQuest "ProQuest") [214192177](https://www.proquest.com/docview/214192177).

[^10]: Taleb, 1997. pp. 91, 110–111.

[^11]: Mandelbrot & Hudson, 2006. pp. 9–10.

[^12]: Mandelbrot & Hudson, 2006. p. 74

[^13]: Mandelbrot & Hudson, 2006. pp. 72–75.

[^14]: Derman, 2004. pp. 143–147.

[^15]: Thorp, 2017. pp. 183–189.

[^16]: [MacKenzie, Donald](https://en.wikipedia.org/wiki/Donald_Angus_MacKenzie "Donald Angus MacKenzie") (2006). [*An Engine, Not a Camera: How Financial Models Shape Markets*](https://archive.org/details/enginenotcamerah00mack_0). Cambridge, MA: MIT Press. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [0-262-13460-8](https://en.wikipedia.org/wiki/Special:BookSources/0-262-13460-8 "Special:BookSources/0-262-13460-8").

[^17]: ["The Sveriges Riksbank Prize in Economic Sciences in Memory of Alfred Nobel 1997"](https://www.nobelprize.org/nobel_prizes/economic-sciences/laureates/1997/press.html).

[^18]: ["Nobel Prize Foundation, 1997"](http://nobelprize.org/nobel_prizes/economics/laureates/1997/press.html) (Press release). October 14, 1997. Retrieved March 26, 2012.

[^19]: Black, Fischer; Scholes, Myron (1973). "The Pricing of Options and Corporate Liabilities". *Journal of Political Economy*. **81** (3): 637–654. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1086/260062](https://doi.org/10.1086%2F260062). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [154552078](https://api.semanticscholar.org/CorpusID:154552078).

[^20]: Merton, Robert (1973). "Theory of Rational Option Pricing". *Bell Journal of Economics and Management Science*. **4** (1): 141–183. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/3003143](https://doi.org/10.2307%2F3003143). [hdl](https://en.wikipedia.org/wiki/Hdl_\(identifier\) "Hdl (identifier)"):[10338.dmlcz/135817](https://hdl.handle.net/10338.dmlcz%2F135817). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [3003143](https://www.jstor.org/stable/3003143).

[^21]: Chan, Raymond (2021-07-03), [*Black-Scholes Equations*](https://www.math.cuhk.edu.hk/~rchan/teaching/math4210/chap08.pdf) (PDF)

[^22]: Nielsen, Lars Tyge (1993). ["Understanding *N* (*d* <sub>1</sub>) and *N* (*d* <sub>2</sub>): Risk-Adjusted Probabilities in the Black–Scholes Model"](http://www.ltnielsen.com/wp-content/uploads/Understanding.pdf) (PDF). *LT Nielsen*.

[^23]: Don Chance (June 3, 2011). "Derivation and Interpretation of the Black–Scholes Model". [CiteSeerX](https://en.wikipedia.org/wiki/CiteSeerX_\(identifier\) "CiteSeerX (identifier)") [10.1.1.363.2491](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.363.2491).

[^24]: Hull, John C. (2008). *Options, Futures and Other Derivatives* (7th ed.). [Prentice Hall](https://en.wikipedia.org/wiki/Prentice_Hall "Prentice Hall"). [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-13-505283-9](https://en.wikipedia.org/wiki/Special:BookSources/978-0-13-505283-9 "Special:BookSources/978-0-13-505283-9").

[^25]: Martin Haugh (2016). [Basic Concepts and Techniques of Risk Management](http://www.columbia.edu/~mh2078/QRM/BasicConceptsTechniques.pdf), [Columbia University](https://en.wikipedia.org/wiki/Columbia_University "Columbia University")

[^26]: ["Extending the Black Scholes formula"](http://finance.bi.no/~bernt/gcc_prog/recipes/recipes/node9.html). *finance.bi.no*. October 22, 2003. Retrieved July 21, 2017.

[^27]: André Jaun. ["The Black–Scholes equation for American options"](http://www.lifelong-learners.com/opt/com/SYL/s6node6.php). Retrieved May 5, 2012.

[^28]: Bernt Ødegaard (2003). ["Extending the Black Scholes formula"](http://finance.bi.no/~bernt/gcc_prog/recipes/recipes/node9.html#SECTION00920000000000000000). Retrieved May 5, 2012.

[^29]: Don Chance (2008). ["Closed-Form American Call Option Pricing: Roll-Geske-Whaley"](http://www.bus.lsu.edu/academics/finance/faculty/dchance/Instructional/TN98-01.pdf) (PDF). Retrieved May 16, 2012.

[^30]: Giovanni Barone-Adesi & Robert E Whaley (June 1987). ["Efficient analytic approximation of American option values"](https://ideas.repec.org/a/bla/jfinan/v42y1987i2p301-20.html). *Journal of Finance*. **42** (2): 301–20. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/2328254](https://doi.org/10.2307%2F2328254). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2328254](https://www.jstor.org/stable/2328254).

[^31]: Bernt Ødegaard (2003). ["A quadratic approximation to American prices due to Barone-Adesi and Whaley"](http://finance.bi.no/~bernt/gcc_prog/recipes/recipes/node13.html). Retrieved June 25, 2012.

[^32]: Don Chance (2008). ["Approximation Of American Option Values: Barone-Adesi-Whaley"](http://www.bus.lsu.edu/academics/finance/faculty/dchance/Instructional/TN98-02.pdf) (PDF). Retrieved June 25, 2012.

[^33]: Petter Bjerksund and Gunnar Stensland, 2002. [Closed Form Valuation of American Options](http://brage.bibsys.no/nhh/bitstream/URN:NBN:no-bibsys_brage_22301/1/bjerksund%20petter%200902.pdf)

[^35]: Crack, Timothy Falcon (2015). *Heard on the Street: Quantitative Questions from Wall Street Job Interviews* (16th ed.). Timothy Crack. pp. 159–162. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-9941182-5-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-9941182-5-7 "Special:BookSources/978-0-9941182-5-7").

[^36]: Hull, John C. (2005). *Options, Futures and Other Derivatives*. [Prentice Hall](https://en.wikipedia.org/wiki/Prentice_Hall "Prentice Hall"). [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [0-13-149908-4](https://en.wikipedia.org/wiki/Special:BookSources/0-13-149908-4 "Special:BookSources/0-13-149908-4").

[^37]: Breeden, D.T., & Litzenberger, R.H. (1978). Prices of state-contingent claims implicit in option prices. Journal of business, 621-651.

[^38]: Gatheral, J. (2006). The volatility surface: a practitioner's guide (Vol. 357). John Wiley & Sons.

[^39]: Yalincak, Hakan (2012). "Criticism of the Black–Scholes Model: But Why Is It Still Used? (The Answer is Simpler than the Formula". [SSRN](https://en.wikipedia.org/wiki/SSRN_\(identifier\) "SSRN (identifier)") [2115141](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2115141).

[^40]: Macbeth, James D.; Merville, Larry J. (December 1979). "An Empirical Examination of the Black-Scholes Call Option Pricing Model". *The Journal of Finance*. **34** (5): 1173–1186. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/2327242](https://doi.org/10.2307%2F2327242). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2327242](https://www.jstor.org/stable/2327242). With the lone exception of out of the money options with less than ninety days to expiration, the extent to which the B-S model underprices (overprices) an in the money (out of the money) option increases with the extent to which the option is in the money (out of the money), and decreases as the time to expiration decreases.

[^41]: [Wilmott, Paul](https://en.wikipedia.org/wiki/Paul_Wilmott "Paul Wilmott") (2008-04-29). ["Science in Finance IX: In defence of Black, Scholes and Merton"](https://web.archive.org/web/20080724100130/http://www.wilmott.com/blogs/paul/index.cfm/2008/4/29/Science-in-Finance-IX-In-defence-of-Black-Scholes-and-Merton). Archived from [the original](http://www.wilmott.com/blogs/paul/index.cfm/2008/4/29/Science-in-Finance-IX-In-defence-of-Black-Scholes-and-Merton) on 2008-07-24.; And the subsequent article:  
[Wilmott, Paul](https://en.wikipedia.org/wiki/Paul_Wilmott "Paul Wilmott") (2008-07-23). ["Science in Finance X: Dynamic hedging and further defence of Black-Scholes"](https://web.archive.org/web/20081120003133/http://www.wilmott.com/blogs/paul/index.cfm/2008/7/23/Science-in-Finance-X-Dynamic-hedging-and-further-defence-of-BlackScholes). Archived from [the original](http://www.wilmott.com/blogs/paul/index.cfm/2008/7/23/Science-in-Finance-X-Dynamic-hedging-and-further-defence-of-BlackScholes) on 2008-11-20.

[^42]: [Riccardo Rebonato](https://en.wikipedia.org/wiki/Riccardo_Rebonato "Riccardo Rebonato") (1999). *Volatility and correlation in the pricing of equity, FX and interest-rate options*. Wiley. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [0-471-89998-4](https://en.wikipedia.org/wiki/Special:BookSources/0-471-89998-4 "Special:BookSources/0-471-89998-4").

[^43]: [Kalotay, Andrew](https://en.wikipedia.org/wiki/Andrew_Kalotay "Andrew Kalotay") (November 1995). ["The Problem with Black, Scholes et al"](http://kalotay.com/sites/default/files/private/BlackScholes.pdf) (PDF). *Derivatives Strategy*.

[^44]: Espen Gaarder Haug and [Nassim Nicholas Taleb](https://en.wikipedia.org/wiki/Nassim_Nicholas_Taleb "Nassim Nicholas Taleb") (2011). [Option Traders Use (very) Sophisticated Heuristics, Never the Black–Scholes–Merton Formula](https://ssrn.com/abstract=1012075). *Journal of Economic Behavior and Organization*, Vol. 77, No. 2, 2011

[^45]: Boness, A James, 1964, Elements of a theory of stock-option value, Journal of Political Economy, 72, 163–175.

[^46]: [A Perspective on Quantitative Finance: Models for Beating the Market](http://edwardothorp.com/sitebuildercontent/sitebuilderfiles/thorpwilmottqfinrev2003.pdf), *Quantitative Finance Review*, 2003. Also see [Option Theory Part 1](https://web.archive.org/web/20110710172106/http://www.edwardothorp.com/sitebuildercontent/sitebuilderfiles/optiontheory.doc) by Edward Thorpe

[^47]: [Emanuel Derman](https://en.wikipedia.org/wiki/Emanuel_Derman "Emanuel Derman") and [Nassim Taleb](https://en.wikipedia.org/wiki/Nassim_Taleb "Nassim Taleb") (2005). [The illusions of dynamic replication](http://www.ederman.com/new/docs/qf-Illusions-dynamic.pdf) [Archived](https://web.archive.org/web/20080703175403/http://www.ederman.com/new/docs/qf-Illusions-dynamic.pdf) 2008-07-03 at the [Wayback Machine](https://en.wikipedia.org/wiki/Wayback_Machine "Wayback Machine"), *Quantitative Finance*, Vol. 5, No. 4, August 2005, 323–326

[^48]: See also: Doriana Ruffinno and Jonathan Treussard (2006). [*Derman and Taleb's The Illusions of Dynamic Replication: A Comment*](https://web.archive.org/web/*/http://www.bu.edu/econ/workingpapers/papers/RuffinoTreussardDT.pdf), WP2006-019, [Boston University](https://en.wikipedia.org/wiki/Boston_University "Boston University") – Department of Economics.

[^49]: [Buffett, Warren E.](https://en.wikipedia.org/wiki/Warren_Buffett "Warren Buffett") (2009-02-27). ["2008 Letter to the Shareholders of Berkshire Hathaway Inc"](https://www.berkshirehathaway.com/letters/2008ltr.pdf) (PDF). [Berkshire Hathaway](https://en.wikipedia.org/wiki/Berkshire_Hathaway "Berkshire Hathaway"). Retrieved 2024-02-29.

[^50]: [*In Pursuit of the Unknown: 17 Equations That Changed the World*](https://books.google.com/books?id=ezzWkITecN8C). New York: Basic Books. 13 March 2012. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-1-84668-531-6](https://en.wikipedia.org/wiki/Special:BookSources/978-1-84668-531-6 "Special:BookSources/978-1-84668-531-6").

[^51]: [Nahin, Paul J.](https://en.wikipedia.org/wiki/Paul_J._Nahin "Paul J. Nahin") (2012). "In Pursuit of the Unknown: 17 Equations That Changed the World". *Physics Today*. Review. **65** (9): 52–53. [Bibcode](https://en.wikipedia.org/wiki/Bibcode_\(identifier\) "Bibcode (identifier)"):[2012PhT....65i..52N](https://ui.adsabs.harvard.edu/abs/2012PhT....65i..52N). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1063/PT.3.1720](https://doi.org/10.1063%2FPT.3.1720). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0031-9228](https://search.worldcat.org/issn/0031-9228).

[^52]: Stewart, Ian (February 12, 2012). ["The mathematical equation that caused the banks to crash"](https://www.theguardian.com/science/2012/feb/12/black-scholes-equation-credit-crunch). *The Guardian*. The Observer. [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0029-7712](https://search.worldcat.org/issn/0029-7712). Retrieved April 29, 2020.

[^53]: Duncan, Felicity (22 July 2020). ["The Great Switch – Negative Prices Are Forcing Traders To Change Their Derivatives Pricing Models"](https://www.intuition.com/the-great-switch-negative-prices-are-forcing-traders-to-change-their-derivatives-pricing-models/). *Intuition*. Retrieved 2 April 2021.

[^54]: ["Traders Rewriting Risk Models After Oil's Plunge Below Zero"](https://www.bloomberg.com/news/articles/2020-04-21/negative-oil-prices-are-literally-breaking-traders-risk-models). *Bloomberg.com*. 21 April 2020. Retrieved 3 April 2021.

[^55]: ["Switch to Bachelier Options Pricing Model – Effective April 22, 2020 - CME Group"](https://www.cmegroup.com/notices/clearing/2020/04/Chadv20-171.html). [CME Group](https://en.wikipedia.org/wiki/CME_Group "CME Group"). Retrieved 3 April 2021.