---
title: Sharpe ratio
source: https://en.wikipedia.org/wiki/Sharpe_ratio
author:
  - "[[Wikipedia]]"
published: 2004-08-27
created: 2026-06-06
description:
tags:
  - clippings
  - Quant
  - mathematics
related:
  - The Sharpe ratio
---
In finance, the **Sharpe ratio** (also known as the **Sharpe index**, the **Sharpe measure**, and the **reward-to-variability ratio**) measures the performance of an investment such as a [security](https://en.wikipedia.org/wiki/Security_\(finance\) "Security (finance)") or [portfolio](https://en.wikipedia.org/wiki/Portfolio_\(finance\) "Portfolio (finance)") compared to a [risk-free asset](https://en.wikipedia.org/wiki/Risk-free_interest_rate "Risk-free interest rate"), after adjusting for its [risk](https://en.wikipedia.org/wiki/Risk "Risk"). It is defined as the difference between the returns of the investment and the [risk-free return](https://en.wikipedia.org/wiki/Risk-free_return "Risk-free return"), divided by the [standard deviation](https://en.wikipedia.org/wiki/Standard_deviation "Standard deviation") of the investment returns. It represents the additional amount of return that an investor receives per unit of increase in risk.

It was named after [William F. Sharpe](https://en.wikipedia.org/wiki/William_F._Sharpe "William F. Sharpe"),[^1] who developed it in 1966.

## Definition

Since its revision by the original author, William Sharpe, in 1994,[^2] the *[ex-ante](https://en.wikipedia.org/wiki/Ex-ante "Ex-ante")* Sharpe ratio is defined as:

$$
{\displaystyle S_{a}={\frac {E[R_{a}-R_{b}]}{\sigma _{a}}}={\frac {E[R_{a}-R_{b}]}{\sqrt {\mathrm {var} [R_{a}-R_{b}]}}},}
$$

where ${\displaystyle R_{a}}$ is the asset return, ${\displaystyle R_{b}}$ is the [risk-free return](https://en.wikipedia.org/wiki/Risk-free_return "Risk-free return") (such as a [U.S. Treasury security](https://en.wikipedia.org/wiki/U.S._Treasury_security "U.S. Treasury security")). ${\displaystyle E[R_{a}-R_{b}]}$ is the [expected value](https://en.wikipedia.org/wiki/Expected_value "Expected value") of the excess of the asset return over the benchmark return, and ${\displaystyle {\sigma _{a}}}$ is the [standard deviation](https://en.wikipedia.org/wiki/Standard_deviation "Standard deviation") of the asset excess return. The [t-statistic](https://en.wikipedia.org/wiki/T-statistic "T-statistic") will equal the Sharpe Ratio times the square root of T (the number of returns used for the calculation).

The *ex-post* Sharpe ratio uses the same equation as the one above but with realized returns of the asset and benchmark rather than expected returns; see the second example below.

The [information ratio](https://en.wikipedia.org/wiki/Information_ratio "Information ratio") is a generalization of the Sharpe ratio that uses as benchmark some other, typically risky index rather than using risk-free returns.

## Use in finance

The Sharpe ratio seeks to characterize how well the return of an asset compensates the investor for the risk taken. When comparing two assets, the one with a higher Sharpe ratio appears to provide better return for the same risk, which is usually attractive to investors.[^3]

However, financial assets are often [not normally distributed](https://en.wikipedia.org/wiki/Tail_risk "Tail risk"), so that standard deviation does not capture all aspects of risk. [Ponzi schemes](https://en.wikipedia.org/wiki/Ponzi_schemes "Ponzi schemes"), for example, will have a high empirical Sharpe ratio until they fail. Similarly, a fund that sells low-strike [put options](https://en.wikipedia.org/wiki/Put_options "Put options") will have a high empirical Sharpe ratio until one of those puts is exercised, creating a large loss. In both cases, the empirical standard deviation before failure gives no real indication of the size of the risk being run.[^4]

Even in less extreme cases, a reliable empirical estimate of Sharpe ratio still requires the collection of return data over sufficient period for all aspects of the strategy returns to be observed. For example, data must be taken over decades if the algorithm sells an insurance that involves a high liability payout once every 5–10 years, and a [high-frequency trading](https://en.wikipedia.org/wiki/High-frequency_trading "High-frequency trading") algorithm may only require a week of data if each trade occurs every 50 milliseconds, with care taken toward risk from unexpected but rare results that such testing did not capture (see [flash crash](https://en.wikipedia.org/wiki/Flash_crash "Flash crash")).

Additionally, when examining the investment performance of assets with smoothing of returns (such as [with-profits](https://en.wikipedia.org/wiki/With-profits "With-profits") funds), the Sharpe ratio should be derived from the performance of the underlying assets rather than the fund returns (Such a model would invalidate the aforementioned Ponzi scheme, as desired).

Sharpe ratios, along with [Treynor ratios](https://en.wikipedia.org/wiki/Treynor_ratio "Treynor ratio") and [Jensen's alphas](https://en.wikipedia.org/wiki/Jensen%27s_alpha "Jensen's alpha"), are often used to rank the performance of portfolio or [mutual fund](https://en.wikipedia.org/wiki/Mutual_fund "Mutual fund") managers. [Berkshire Hathaway](https://en.wikipedia.org/wiki/Berkshire_Hathaway "Berkshire Hathaway") had a Sharpe ratio of 0.79 for the period 1976 to 2017, higher than any other stock or mutual fund with a history of more than 30 years. The stock market had a Sharpe ratio of 0.49 for the same period.[^5]

## Tests

Several statistical tests of the Sharpe ratio have been proposed. These include those proposed by Jobson & Korkie [^6] and Gibbons, Ross & Shanken.[^7]

## History

In 1952, Andrew D. Roy suggested maximizing the ratio (*m* − *d*) ÷ *σ*, where m is expected gross return, d is some "disaster level" (a.k.a., minimum acceptable return, or MAR) and σ is standard deviation of returns.[^8] This ratio is just the Sharpe ratio, only using minimum acceptable return instead of the risk-free rate in the numerator, and using standard deviation of returns instead of standard deviation of excess returns in the denominator. Roy's ratio is also related to the [Sortino ratio](https://en.wikipedia.org/wiki/Sortino_ratio "Sortino ratio"), which also uses MAR in the numerator, but uses a different standard deviation (semi/downside deviation) in the denominator.

In 1966, [William F. Sharpe](https://en.wikipedia.org/wiki/William_F._Sharpe "William F. Sharpe") developed what is now known as the Sharpe ratio.[^1] Sharpe originally called it the "reward-to-variability" ratio before it began being called the Sharpe ratio by later academics and financial operators. The definition was:

$$
{\displaystyle S={\frac {E[R-R_{f}]}{\sqrt {\mathrm {var} [R]}}}.}
$$

Sharpe's 1994 revision acknowledged that the basis of comparison should be an applicable benchmark, which changes with time. After this revision, the definition is:

$$
{\displaystyle S={\frac {E[R-R_{b}]}{\sqrt {\mathrm {var} [R-R_{b}]}}}.}
$$

Note, if ${\displaystyle R_{f}}$ is a constant risk-free return throughout the period, 
$$
{\displaystyle {\sqrt {\mathrm {var} [R-R_{f}]}}={\sqrt {\mathrm {var} [R]}}.}
$$

The (original) Sharpe ratio has often been challenged with regard to its appropriateness as a fund performance measure during periods of declining markets.[^9]

## Examples

**Example 1**

Suppose the asset has an expected return of 15% in excess of the risk free rate. We typically do not know if the asset will have this return. We estimate the risk of the asset, defined as standard deviation of the asset's [excess return](https://en.wikipedia.org/wiki/Excess_return "Excess return"), as 10%. The risk-free return is constant. Then the Sharpe ratio using the old definition is ${\displaystyle {\frac {R_{a}-R_{f}}{\sigma _{a}}}={\frac {0.15}{0.10}}=1.5}$.

**Example 2**

An investor has a portfolio with an expected return of 12% and a standard deviation of 10%. The rate of interest is 5%, and is risk-free.

The Sharpe ratio is: ${\displaystyle {\frac {0.12-0.05}{0.1}}=0.7}$.

## Strengths and weaknesses

A negative Sharpe ratio means the portfolio has underperformed its benchmark. All other things being equal, an investor typically prefers a higher positive Sharpe ratio as it has either higher returns or lower [volatility](https://en.wikipedia.org/wiki/Volatility_\(finance\) "Volatility (finance)"). However, a negative Sharpe ratio can be made higher by either increasing returns (a good thing) or increasing volatility (a bad thing). Thus, for negative values the Sharpe ratio does not correspond well to typical investor [utility functions](https://en.wikipedia.org/wiki/Utility#Utility_function "Utility").

The Sharpe ratio is convenient because it can be calculated purely from any observed series of returns without need for additional information surrounding the source of profitability. However, this makes it vulnerable to manipulation if opportunities exist for smoothing or discretionary pricing of illiquid assets. Statistics such as the [bias ratio](https://en.wikipedia.org/wiki/Bias_ratio_\(finance\) "Bias ratio (finance)") and [first order autocorrelation](https://en.wikipedia.org/wiki/Autocorrelation "Autocorrelation") are sometimes used to indicate the potential presence of these problems.

While the [Treynor ratio](https://en.wikipedia.org/wiki/Treynor_ratio "Treynor ratio") considers only the [systematic risk](https://en.wikipedia.org/wiki/Systematic_risk "Systematic risk") of a portfolio, the Sharpe ratio considers both systematic and [idiosyncratic risks](https://en.wikipedia.org/wiki/Idiosyncratic_risk "Idiosyncratic risk"). Which one is more relevant will depend on the portfolio context.

The returns measured can be of any frequency (i.e. daily, weekly, monthly or annually), as long as they are [normally distributed](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution"), as the returns can always be annualized. Herein lies the underlying weakness of the ratio – asset returns are not normally distributed. Abnormalities like [kurtosis](https://en.wikipedia.org/wiki/Kurtosis_risk "Kurtosis risk"), [fatter tails](https://en.wikipedia.org/wiki/Fat_tail "Fat tail") and higher peaks, or [skewness](https://en.wikipedia.org/wiki/Skewness_risk "Skewness risk") on the [distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") can be problematic for the ratio, as standard deviation does not have the same effectiveness when these problems exist.[^10]

For Brownian motion with i.i.d. increments, Sharpe ratio ${\displaystyle \mu /\sigma }$ is a dimensional quantity with units ${\displaystyle 1/{\sqrt {T}}}$ (where ${\displaystyle T}$ is the horizon length), because over horizon ${\displaystyle T}$ the expected excess return is ${\displaystyle \mu T}$ while the standard deviation is ${\displaystyle \sigma {\sqrt {T}}}$; consequently the horizon- ${\displaystyle T}$ Sharpe ratio is ${\displaystyle S_{T}=(\mu /\sigma ){\sqrt {T}}}$.[^11] [Kelly criterion](https://en.wikipedia.org/wiki/Kelly_criterion "Kelly criterion") is a dimensionless quantity, and, indeed, Kelly fraction ${\displaystyle \mu /\sigma ^{2}}$ is the numerical fraction of wealth suggested for the investment.

In some settings, the [Kelly criterion](https://en.wikipedia.org/wiki/Kelly_criterion "Kelly criterion") can be used to convert the Sharpe ratio into a rate of return. The Kelly criterion gives the ideal size of the investment, which when adjusted by the period and expected rate of return per unit, gives a rate of return.[^12]

The accuracy of Sharpe ratio estimators hinges on the statistical properties of returns, and these properties can vary considerably among strategies, portfolios, and over time.[^11]

### Drawback as fund selection criteria

Bailey and López de Prado (2012) [^13] show that Sharpe ratios tend to be overstated in the case of hedge funds with short track records. These authors propose a [deflated Sharpe ratio](https://en.wikipedia.org/wiki/Deflated_Sharpe_ratio "Deflated Sharpe ratio") that takes into account the asymmetry and fat-tails of the returns' distribution, sample length, and selection bias. With regards to the selection of portfolio managers on the basis of their Sharpe ratios, these authors have proposed a *Sharpe ratio indifference curve*.[^14] This curve illustrates the fact that it is efficient to hire portfolio managers with low and even negative Sharpe ratios, as long as their correlation to the other portfolio managers is sufficiently low.

Goetzmann, Ingersoll, Spiegel, and Welch (2002) determined that the best strategy to maximize a portfolio's Sharpe ratio, when both securities and options contracts on these securities are available for investment, is a portfolio of selling one [out-of-the-money](https://en.wikipedia.org/wiki/Out-of-the-money "Out-of-the-money") call and selling one out-of-the-money put. This portfolio generates an immediate positive payoff, has a large probability of generating modestly high returns, and has a small probability of generating huge losses. Shah (2014) observed that such a portfolio is not suitable for many investors, but fund sponsors who select fund managers primarily based on the Sharpe ratio will give incentives for fund managers to adopt such a strategy.[^15]

In recent years, many financial websites have promoted the idea that a Sharpe Ratio "greater than 1 is considered acceptable; a ratio higher than 2.0 is considered very good; and a ratio above 3.0 is excellent." While it is unclear where this rubric originated online, it makes little sense since the magnitude of the Sharpe ratio is sensitive to the time period over which the underlying returns are measured. This is because the nominator of the ratio (returns) scales in proportion to time; while the denominator of the ratio (standard deviation) scales in proportion to the square root of time. Most diversified indexes of equities, bonds, mortgages or commodities have annualized Sharpe ratios below 1, which suggests that a Sharpe ratio consistently above 2.0 or 3.0 is unrealistic.

[^1]: Sharpe, W. F. (1966). "Mutual Fund Performance". *Journal of Business*. **39** (S1): 119–138. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1086/294846](https://doi.org/10.1086%2F294846).

[^2]: Sharpe, William F. (1994). ["The Sharpe Ratio"](http://www.stanford.edu/~wfsharpe/art/sr/sr.htm). *The Journal of Portfolio Management*. **21** (1): 49–58. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.3905/jpm.1994.409501](https://doi.org/10.3905%2Fjpm.1994.409501). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [55394403](https://api.semanticscholar.org/CorpusID:55394403). Retrieved 12 June 2012.

[^3]: Gatfaoui, Hayette. "Sharpe Ratios and Their Fundamental Components: An Empirical Study". *IESEG School of Management*.

[^4]: Agarwal, Vikas; Naik, Narayan Y. (2004). ["Risks and Portfolio Decisions Involving Hedge Funds"](https://www.jstor.org/stable/1262669). *The Review of Financial Studies*. **17** (1): 63–98. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1093/rfs/hhg044](https://doi.org/10.1093%2Frfs%2Fhhg044). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0893-9454](https://search.worldcat.org/issn/0893-9454). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [1262669](https://www.jstor.org/stable/1262669).

[^5]: Frazzini, Andrea; Kabiller, David; Pedersen, Lasse Heje (1 September 2018). ["Buffett's Alpha"](https://www.tandfonline.com/doi/full/10.2469/faj.v74.n4.3). *[Financial Analysts Journal](https://en.wikipedia.org/wiki/Financial_Analysts_Journal "Financial Analysts Journal")*. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2469/faj.v74.n4.3](https://doi.org/10.2469%2Ffaj.v74.n4.3). [hdl](https://en.wikipedia.org/wiki/Hdl_\(identifier\) "Hdl (identifier)"):[10398/5c1cd30d-a404-44ae-9578-7710cec23ea4](https://hdl.handle.net/10398%2F5c1cd30d-a404-44ae-9578-7710cec23ea4). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0015-198X](https://search.worldcat.org/issn/0015-198X).

[^6]: Jobson JD; Korkie B (September 1981). "Performance hypothesis testing with the Sharpe and Treynor measures". *The Journal of Finance*. **36** (4): 888–908. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1111/j.1540-6261.1981.tb04891.x](https://doi.org/10.1111%2Fj.1540-6261.1981.tb04891.x). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2327554](https://www.jstor.org/stable/2327554).

[^7]: Gibbons M; Ross S; Shanken J (September 1989). "A test of the efficiency of a given portfolio". *Econometrica*. **57** (5): 1121–1152. [CiteSeerX](https://en.wikipedia.org/wiki/CiteSeerX_\(identifier\) "CiteSeerX (identifier)") [10.1.1.557.1995](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.557.1995). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/1913625](https://doi.org/10.2307%2F1913625). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [1913625](https://www.jstor.org/stable/1913625).

[^8]: Roy, Arthur D. (July 1952). "Safety First and the Holding of Assets". *Econometrica*. **20** (3): 431–450. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/1907413](https://doi.org/10.2307%2F1907413). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [1907413](https://www.jstor.org/stable/1907413).

[^9]: Scholz, Hendrik (2007). "Refinements to the Sharpe ratio: Comparing alternatives for bear markets". *Journal of Asset Management*. **7** (5): 347–357. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1057/palgrave.jam.2250040](https://doi.org/10.1057%2Fpalgrave.jam.2250040). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [154908707](https://api.semanticscholar.org/CorpusID:154908707).

[^10]: ["Understanding The Sharpe Ratio"](http://www.investopedia.com/articles/07/sharpe_ratio.asp). Retrieved 14 March 2011.

[^11]: Lo, Andrew W. (July–August 2002). "The Statistics of Sharpe Ratios". *Financial Analysts Journal*. **58** (4).

[^12]: Wilmott, Paul (2007). [*Paul Wilmott introduces Quantitative Finance*](https://archive.org/details/paulwilmottintro00wilm_610) (Second ed.). Wiley. pp. [429](https://archive.org/details/paulwilmottintro00wilm_610/page/n457) –432. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-470-31958-1](https://en.wikipedia.org/wiki/Special:BookSources/978-0-470-31958-1 "Special:BookSources/978-0-470-31958-1").

[^13]: Bailey, D. and M. López de Prado (2012): "The Sharpe Ratio Efficient Frontier", Journal of Risk, 15(2), pp.3–44. Available at [https://ssrn.com/abstract=1821643](https://ssrn.com/abstract=1821643)

[^14]: Bailey, D. and M. Lopez de Prado (2013): "The Strategy Approval Decision: A Sharpe Ratio Indifference Curve approach", Algorithmic Finance 2(1), pp. 99–109 Available at [https://ssrn.com/abstract=2003638](https://ssrn.com/abstract=2003638)

[^15]: Shah, Sunit N. (2014), [*The Principal-Agent Problem in Finance*](https://rpc.cfainstitute.org/research/foundation/2014/the-principalagent-problem-in-finance), CFA Institute, p. 14