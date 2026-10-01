---
title: "Probability Theory Fundamentals for Quantitative Finance - Interactive"
source: "https://mbrenndoerfer.com/writing/probability-theory-fundamentals-quantitative-finance"
author:
  - "[[Michael Brenndoerfer]]"
published: 2025-10-20
created: 2026-07-10
description: "Master probability distributions, expected values, Bayes' theorem, and risk measures. Essential foundations for portfolio theory and derivatives pricing."
tags:
  - "clippings"
---
![](https://assets.mbrenndoerfer.com/headers/default_dark_fx.png)

## Probability Theory Fundamentals for Quantitative Finance

Master probability distributions, expected values, Bayes' theorem, and risk measures. Essential foundations for portfolio theory and derivatives pricing.
## Probability Theory Fundamentals

Every decision in finance involves uncertainty. Will the stock price rise or fall tomorrow? What's the likelihood a borrower defaults on their loan? How should we price an option when future volatility is unknown? [Probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) provides the mathematical language to quantify and reason about uncertainty, and to ultimately profit from it.

At its core, probability theory turns vague notions like "likely" or "risky" into precise numerical statements. Instead of saying a bond "might" default, we assign it a 2.3% default probability. Rather than claiming markets are "volatile," we calculate a 16% annualized [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis). This precision enables everything from [portfolio optimization](https://mbrenndoerfer.com/writing/differential-calculus-optimization-quantitative-finance) to derivatives pricing to risk management.

The foundations we cover here, random variables, distributions, expected values, and conditional probabilities, appear throughout quantitative finance. Portfolio theory relies on expected returns and covariances. Option pricing depends on [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) of future asset prices. Credit risk models use conditional default probabilities. Machine learning algorithms optimize [expected loss](https://mbrenndoerfer.com/writing/credit-risk-fundamentals-pd-lgd-ead-expected-loss) functions. Master these fundamentals, and you'll have the building blocks for every quantitative technique that follows.

## Sample Spaces, Events, and Probability Axioms

Before we can assign probabilities, we need a precise framework for describing uncertain outcomes. Without such a framework, our reasoning about uncertainty would remain informal and potentially inconsistent. The mathematical structure begins with three foundational concepts that together provide a complete language for discussing randomness.

Sample Space

The sample space $\Omega$ is the set of all possible outcomes of a random experiment. Each element $\omega \in \Omega$ represents one complete outcome that could occur.

The sample space is the foundation upon which all probability calculations rest. Think of it as the complete catalog of everything that could possibly happen when we conduct our random experiment. The key word here is "complete." The sample space must include every conceivable outcome, even those that seem unlikely or undesirable. If an outcome is missing from our sample space, we have no mathematical way to discuss its probability.

Consider rolling a six-sided die. The sample space is $\Omega = \{1, 2, 3, 4, 5, 6\}$, listing every possible result. For a stock's daily return, the sample space might be $\Omega = [-1, \infty)$, since returns cannot be less than -100% but can, in principle, be arbitrarily large (though extreme returns are rare). Notice how the nature of the random experiment determines the appropriate sample space: a finite set for the die, an infinite continuum for stock returns. Choosing the right sample space is the first modeling decision we make, and it shapes all subsequent analysis.

Event

An event $A$ is a subset of the sample space, $A \subseteq \Omega$. Events represent outcomes we care about, such as "rolling an even number" or "the stock return exceeds 5%."

Events emerge from our questions about uncertain situations. While the sample space contains raw outcomes, events package those outcomes into meaningful categories that correspond to questions we want to answer. The event "rolling an even number" is the subset $\{2, 4, 6\}$, which collects all the individual outcomes where an even number appears. The event "stock return exceeds 5%" contains every possible return value greater than 0.05. By defining events as subsets, we gain access to the powerful machinery of set theory for combining and manipulating them.

Events can be combined using set operations. If $A$ is "stock rises" and $B$ is "volume is high," then:

- $A \cup B$ is "stock rises OR volume is high (or both)"
- $A \cap B$ is "stock rises AND volume is high"
- $A^c$ is "stock does not rise"

These set operations allow us to build complex events from simpler ones, mirroring how we naturally combine conditions in financial analysis. When a portfolio manager asks "what's the probability that either the market rallies or volatility spikes?" they're implicitly using the union operation. The intersection operation captures joint occurrences, while the complement captures the negation of an event.

### The Kolmogorov Axioms

With sample spaces and events defined, we need rules for assigning probabilities to events. Andrey Kolmogorov formalized [probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) in 1933 with three axioms that any probability function $P$ must satisfy. These axioms represent the minimal requirements for a consistent probability assignment.they capture our most basic intuitions about what probability should mean, while leaving room for many different specific probability measures.

1. **Non-negativity**: $P(A) \geq 0$ for any event $A$
2. **[Normalization](https://mbrenndoerfer.com/writing/normalization-feature-scaling-min-max-machine-learning-guide)**: $P(\Omega) = 1$ (something must happen)
3. **Countable additivity**: For mutually exclusive events $A_1, A_2, \ldots$,
$$
P(A_1 \cup A_2 \cup \cdots) = \sum_{i=1}^{\infty} P(A_i)
$$

The first axiom says probabilities cannot be negative.this matches our intuition that probability measures "how much" of something, and negative amounts don't make sense. The second axiom normalizes the scale: the entire sample space has probability 1, meaning that certainty corresponds to probability 1 and impossibility to probability 0. The third axiom, countable additivity, is the most powerful: it says that for events that cannot happen simultaneously (mutually exclusive events), the probability of at least one occurring equals the sum of their individual probabilities. This axiom allows us to decompose complex events into simpler pieces and compute probabilities by addition.

These axioms seem almost trivially obvious, yet they are sufficient to derive all of [probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning). From them, several useful properties follow immediately:

- **Complement rule**: $P(A^c) = 1 - P(A)$
- **Probability bounds**: $0 \leq P(A) \leq 1$
- **Addition rule**: $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

The complement rule follows from the fact that $A$ and $A^c$ are mutually exclusive and their union is the entire sample space: $P(A) + P(A^c) = P(\Omega) = 1$. The probability bounds follow from the complement rule combined with non-negativity. The addition rule requires subtracting $P(A \cap B)$ to avoid double-counting outcomes that belong to both events.

The addition rule accounts for double-counting when events overlap. If the probability of a stock rising is 0.55 and the probability of high volume is 0.30, we cannot simply add these to find the probability of either occurring.we must subtract the probability of both happening together. This correction is essential whenever we combine events that share common outcomes.
# Random Variables

While sample spaces and events provide the conceptual foundation, we typically work with [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) that map outcomes to numbers. This mapping enables mathematical operations like addition, multiplication, and the computation of averages. The transition from abstract outcomes to numerical values is what makes probability theory a quantitative discipline.it allows us to apply calculus, linear algebra, and optimization to problems involving uncertainty.

Random Variable

A random variable $X$ is a function that assigns a numerical value to each outcome in the sample space: $X: \Omega \to \mathbb{R}$. We use capital letters for random variables and lowercase letters for their realized values.

The definition of a random variable as a function might initially seem abstract, but it captures a natural idea: we take the raw outcomes of a random experiment and translate them into numbers that we can analyze mathematically. The word "variable" reflects that the numerical value varies depending on which outcome occurs. The word "random" indicates that we don't know in advance which outcome will occur.

When we say "let $X$ be the daily return of a stock," we mean $X$ is a function that, for each possible market scenario $\omega$, produces a number representing that day's return. Before the market closes, $X$ is random because we do not know which $\omega$ will occur. After closing, we observe a specific realization $x = 0.023$ (a 2.3% return). This distinction between the random variable $X$ and its realized value $x$ is crucial. Before observation, we work with probabilities and expectations; after observation, we work with data.

### Discrete Random Variables

A discrete random variable takes values from a countable set, such as integers or a finite list. Discrete [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) arise when outcomes fall into distinct categories or when we count occurrences of events. The probability mass function (PMF) specifies the probability of each possible value, giving us a complete description of how probability is distributed across the possible outcomes.

Probability Mass Function

For a discrete random variable $X$, the probability mass function is $p_X(x) = P(X = x)$, giving the probability that $X$ equals each specific value $x$.

The PMF answers the most direct question we can ask about a discrete random variable: "What's the probability that $X$ takes this particular value?" By specifying these probabilities for every possible value, the PMF provides complete information about the random variable's behavior. The subscript $X$ in $p_X(x)$ reminds us which random variable we're describing, since different [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) have different PMFs.

Consider a simplified credit rating model where a bond can be in one of three states at year-end:

In\[2\]:

Code

```
import numpy as np

# Credit rating transitions: Upgraded, Unchanged, Downgraded
states = ["Upgraded", "Unchanged", "Downgraded"]
probabilities = np.array([0.15, 0.70, 0.15])

# Verify this is a valid PMF (sums to 1)
assert np.isclose(probabilities.sum(), 1.0)
```

Out\[3\]:

Console

```
P(Upgraded) = 0.15
P(Unchanged) = 0.70
P(Downgraded) = 0.15

Sum of probabilities: 1.00
```

Out\[4\]:

Visualization

![Bar chart showing probabilities for Upgraded (15%), Unchanged (70%), and Downgraded (15%) credit states.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/pmf-credit-rating-transitions.png)

Bar chart showing probabilities for Upgraded (15%), Unchanged (70%), and Downgraded (15%) credit states.

The probabilities sum to 1 because exactly one outcome must occur. This bond will be upgraded, unchanged, or downgraded.there's no other possibility. This summing-to-one requirement is not merely a convention; it follows directly from the Kolmogorov axioms applied to the exhaustive list of mutually exclusive outcomes.

### Continuous Random Variables

Financial quantities like returns, prices, and interest rates can take any value within a range, making them continuous [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning). The continuity here refers to the mathematical property that between any two possible values, there are infinitely many other possible values. For continuous variables, we cannot assign probability to individual points because there are uncountably many. Instead, we use probability density functions.

Probability Density Function

For a continuous random variable $X$, the probability density function (PDF) $f_X(x)$ gives the relative likelihood of values near $x$. The probability that $X$ falls in an interval is the area under the density curve: $P(a < X < b) = \int_a^b f_X(x)\, dx$.

The PDF represents a fundamentally different concept than the PMF. Rather than giving the probability of exact values (which is zero for continuous variables), the PDF describes how probability is spread across the continuum of possible values. Higher density means probability is more concentrated in that region, while lower density means probability is more dispersed. The integral formula captures this: to find the probability of landing in an interval, we accumulate (integrate) the density across that interval.

The density itself is not a probability.it can exceed 1 for concentrated distributions. Only when we integrate over an interval do we obtain a probability, which is always between 0 and 1. This distinction often confuses newcomers to [probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning). Think of density as a rate of probability per unit length. A density of 2 at some point doesn't mean probability 2, but rather that probability is accumulating twice as fast near that point compared to a density of 1.

Advertisement

### The Cumulative Distribution Function

Both discrete and continuous [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) have cumulative distribution functions, and gives a unified way to describe [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science). The CDF answers the running question "what's the probability of being less than or equal to this value?" as we move along the number line.

Cumulative Distribution Function

The cumulative distribution function (CDF) of a random variable $X$ is:

$$
F_X(x) = P(X \leq x)
$$

where:

- $F_X(x)$: CDF evaluated at $x$, giving a probability between 0 and 1
- $P(X \leq x)$: probability that $X$ takes a value less than or equal to $x$
- As $x \to -\infty$, $F_X(x) \to 0$ (impossible to be below all values)
- As $x \to +\infty$, $F_X(x) \to 1$ (certain to be below infinity)

The CDF provides a universal framework that works identically for discrete and continuous [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning). This universality makes it valuable for theoretical work and for computing probabilities of intervals: $P(a < X \leq b) = F_X(b) - F_X(a)$. The CDF always starts at 0 for sufficiently negative values because nothing can be less than negative infinity, increases monotonically as we move right while accumulating more probability, and approaches 1 for large values as it eventually includes all possible outcomes.

The CDF starts at 0 for very negative values and increases to 1 for large values. For continuous distributions, the density is the derivative of the CDF: $f_X(x) = \frac{d}{dx} F_X(x)$. This relationship reveals the deep connection between the two representations. The PDF tells us the instantaneous rate at which probability accumulates, while the CDF tells us the total probability accumulated up to each point.

Out\[5\]:

Visualization

![Line plot of the standard normal PDF with a vertical line at x = 1 and the area for x ≤ 1 shaded.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/pdf-shaded-area-normal.png)

Line plot of the standard normal PDF with a vertical line at x = 1 and the area for x ≤ 1 shaded.

![Line plot of the standard normal CDF with vertical and horizontal reference lines marking F(1).](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/cdf-cumulative-normal.png)

Line plot of the standard normal CDF with vertical and horizontal reference lines marking F(1).

Advertisement

## Key Probability Distributions in Finance

Certain [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) appear repeatedly in quantitative finance, and each encodes specific assumptions about how uncertainty manifests. Understanding their properties helps you recognize when to apply each one and interpret model outputs correctly. Choosing the right distribution is a fundamental modeling decision.

### The Normal Distribution

The normal (Gaussian) distribution dominates [financial modeling](https://mbrenndoerfer.com/writing/introduction-stock-market-monte-carlo-simulation) due to the [Central Limit Theorem](https://mbrenndoerfer.com/writing/central-limit-theorem-foundation-statistical-inference): sums of many independent [random variables](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) tend toward normality regardless of their individual distributions. Since returns aggregate countless buy and sell decisions, they often resemble normal distributions, at least approximately. This mathematical result explains why the normal distribution appears across so many domains: any quantity that results from the combination of many small, independent influences tends toward normality.

A normal random variable $X \sim \mathcal{N}(\mu, \sigma^2)$ has density:

$$
f_X(x) = \frac{1}{\sigma\sqrt{2\pi}} \exp\left(-\frac{(x - \mu)^2}{2\sigma^2}\right)
$$

where:

- $f_X(x)$: probability density at value $x$, representing the relative likelihood of observing a value near $x$
- $\mu$: mean (center) of the distribution, where the peak occurs
- $\sigma$: [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) (spread), controlling the width of the bell curve
- $\sigma^2$: variance, the square of the standard deviation
- $\exp(\cdot)$: exponential function ($e$ raised to the given power)
- $\pi$: mathematical constant (≈ 3.14159)
- The term $(x - \mu)^2 / (2\sigma^2)$ measures how many standard deviations $x$ is from the mean, squared and scaled
- The [normalization](https://mbrenndoerfer.com/writing/normalization-feature-scaling-min-max-machine-learning-guide) factor $1/(\sigma\sqrt{2\pi})$ ensures the total area under the curve equals 1

The formula's structure reveals important intuition: the exponential of a negative quadratic creates the characteristic bell shape. Values near the mean ($x \approx \mu$) make the exponent close to zero, giving high density, while values far from the mean produce large negative exponents, giving near-zero density. The quadratic form ensures symmetric decay on both sides of the mean. This quadratic dependence in the exponent is what distinguishes the [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) from other bell-shaped curves: the rate at which density decreases accelerates as you move away from the mean, creating the rapid tail decay that characterizes normal distributions.

The parameters are:

- **$\mu$**: Mean, the center of the distribution. In finance, this represents expected return.
- **$\sigma^2$**: [Variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis), measuring spread. Its square root $\sigma$ is the standard deviation, often called volatility.

Out\[6\]:

Visualization

![Three bell curves showing normal distributions with varying means and variances.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/normal-distribution-comparison.png)

Three bell curves showing normal distributions with varying means and variances.

The standard [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) ($\mu = 0$, $\sigma = 1$) is especially important. Any normal variable can be standardized:

$$
Z = \frac{X - \mu}{\sigma} \sim \mathcal{N}(0, 1)
$$

where:

- $Z$: standardized random variable (also called [z-score](https://mbrenndoerfer.com/writing/standardization-normalizing-features-fair-comparison-machine-learning-math-formulas-python-scikit-learn))
- $X$: original normal random variable
- $\mu$: mean of $X$
- $\sigma$: [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) of $X$
- $\mathcal{N}(0, 1)$: standard normal distribution with mean 0 and variance 1

The standardization formula shifts the distribution so the mean becomes zero (by subtracting $\mu$) and scales it so the standard deviation becomes one (by dividing by $\sigma$). This transformation is a linear rescaling that preserves the shape of the distribution while relocating it to a standard position. The standardized value $Z$ tells us how many standard deviations the original value $X$ lies from its mean.a $Z$ of 2 means $X$ is two standard deviations above average, regardless of what units $X$ is measured in.

This transformation allows us to use standard normal tables or functions to compute probabilities for any normal distribution. We only need to tabulate one distribution rather than infinitely many. When a financial analyst computes that a return is "two sigma below average," they're implicitly using this standardization: they've converted the return to a z-score to assess how unusual it is.

### The Log-Normal Distribution

While returns may be approximately normal, prices cannot be. A [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) allows negative values, but stock prices are always positive. This constraint creates a fundamental modeling challenge. We need a distribution that captures price randomness while respecting the positivity constraint. The log-normal distribution resolves this by modeling the logarithm of the price as normal.

If $\ln(X) \sim \mathcal{N}(\mu, \sigma^2)$, then $X$ follows a log-normal distribution. This is exactly what happens when returns compound multiplicatively: if each period's return is $1 + r_t$ and log-returns $\ln(1 + r_t)$ are normal, then the price ratio is log-normal. The log-normal distribution inherits its tractability from the normal distribution while ensuring that prices remain strictly positive, a crucial feature for [financial modeling](https://mbrenndoerfer.com/writing/introduction-stock-market-monte-carlo-simulation).

Out\[7\]:

Visualization

![Probability density curve with peak near left side and long right tail.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/lognormal-distribution.png)

Probability density curve with peak near left side and long right tail.

The Black-Scholes option pricing model assumes stock prices follow a [log-normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science), which ensures prices remain positive while allowing for the mathematical tractability of normal distributions for log-returns. This modeling choice has profound implications: it means log-returns (continuously compounded returns) are normally distributed, and the model permits arbitrarily large percentage gains but bounds losses at 100%. A stock can double, triple, or increase tenfold, but it cannot fall below zero.

Advertisement

### Other Important Distributions

Several other distributions appear frequently in quantitative finance, each suited to particular modeling contexts:

- **Uniform distribution**: Equal probability over an interval. Used for random number generation and some [Monte Carlo](https://mbrenndoerfer.com/writing/introduction-stock-market-monte-carlo-simulation) methods. The uniform distribution represents maximal uncertainty within a bounded range.all values are equally likely.
- **[Exponential distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science)**: Models waiting times between events, such as time until the next trade or default. Its "memoryless" property means the probability of an event occurring in the next moment does not depend on how long we have already waited.
- **Poisson distribution**: Counts events in fixed intervals, like number of trades per minute or credit events per year. Appropriate when events occur randomly and independently at a constant average rate.
- **[Student's t](https://mbrenndoerfer.com/writing/t-test-student-t-distribution-one-sample-two-sample-pooled-welch-paired-assumptions-decision-framework) -distribution**: Similar to normal but with heavier tails, better capturing extreme returns. The t-distribution has a parameter (degrees of freedom) that controls tail heaviness, allowing it to interpolate between normal-like behavior and fat-tailed behavior.
- **Chi-squared distribution**: Arises in [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) estimation and [hypothesis testing](https://mbrenndoerfer.com/writing/statistical-inference-estimation-hypothesis-testing-guide). Used to quantify uncertainty in volatility estimates and to test whether observed patterns are [statistically significant](https://mbrenndoerfer.com/writing/p-values-hypothesis-test-setup-null-alternative-hypotheses-test-statistics).

Advertisement

## Expected Value

The [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) gives a single number summarizing the "center" or "average outcome" of a random variable. It's the theoretical mean you would observe if you could repeat the random experiment infinitely many times. This concept connects probability theory to decisions under uncertainty: when facing uncertainty, the expected value gives a natural way to summarize what we anticipate on average.

Expected Value

For a discrete random variable with PMF $p_X(x)$, the expected value is:

$$
E[X] = \sum_x x \cdot p_X(x)
$$

For a continuous random variable with PDF $f_X(x)$:

$$
E[X] = \int_{-\infty}^{\infty} x \cdot f_X(x)\, dx
$$

where:

- $E[X]$: expected value (also called expectation or mean) of random variable $X$
- $x$: possible values that $X$ can take
- $p_X(x)$: probability mass function giving $P(X = x)$ for discrete $X$
- $f_X(x)$: probability density function for continuous $X$
- $\sum_x$: sum over all possible values of $X$
- $\int_{-\infty}^{\infty}$: integral over the entire real line

The [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) is a probability-weighted average. Outcomes with higher probability contribute more to the average than rare outcomes. Each possible value is weighted by its probability (or density), and these weighted values are summed (or integrated). This weighting scheme ensures that likely outcomes dominate the calculation while rare outcomes contribute proportionally to their likelihood.

The parallel structure between the discrete and continuous formulas reflects a deeper unity: in both cases, we're computing a weighted average where the weights come from the probability distribution. The sum becomes an integral when the set of possible values becomes continuous, but the underlying logic remains the same.

### Financial Interpretation

In finance, expected value represents the average return you'd earn if you could repeat an investment many times under identical conditions. A stock with 10% expected annual return won't return exactly 10% each year. It might return 25% one year and -5% the next, but over many years, the average approaches 10%. This long-run interpretation connects the mathematical definition to investment intuition.

Consider a simplified binary stock model:

In\[8\]:

Code

```
import numpy as np

# Binary model: stock either goes up 20% or down 10%
outcomes = np.array([0.20, -0.10])  # Possible returns
probabilities = np.array([0.60, 0.40])  # Probabilities

# Expected return
expected_return = np.sum(outcomes * probabilities)
```

Out\[9\]:

Console

```
Possible outcomes: up 20% with prob 60%, down -10% with prob 40%
Expected return: E[R] = 20% × 60% + (-10%) × 40% = 8.0%
```

The expected return of 8% doesn't mean we expect an 8% return on any single investment. It means that if we made this investment many times, our average return would converge to 8%. On any individual occasion, we'll experience either a 20% gain or a 10% loss. The 8% never actually occurs. This distinction between [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) and realized value is fundamental to probabilistic thinking.

### Properties of Expected Value

Expected value satisfies several useful properties that make it indispensable for financial calculations:

**Linearity**: For any random variables $X$ and $Y$ and constants $a, b$:

$$
E[aX + bY] = aE[X] + bE[Y]
$$

where:

- $a, b$: constants (real numbers)
- $X, Y$: random variables (can be dependent or independent)
- $E[\cdot]$: expected value operator
- $aX + bY$: linear combination of the random variables
- $aE[X] + bE[Y]$: the same linear combination applied to the expected values

This property holds even if $X$ and $Y$ are dependent. The expectation "passes through" the linear combination regardless of any relationship between the variables. This is not true for most other summary measures. The [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) of a sum, for example, depends critically on the correlation between variables. Linearity makes portfolio expected [return calculations](https://mbrenndoerfer.com/writing/data-handling-visualization-quantitative-finance-python) straightforward: the expected return of a portfolio is the weighted average of individual expected returns. If you hold 60% stocks with expected return 10% and 40% bonds with expected return 4%, the portfolio expected return is simply $0.6 \times 10\% + 0.4 \times 4\% = 7.6\%$, regardless of how stocks and bonds move together.

**Expectation of a function**: For a function $g(X)$:

$$
E[g(X)] = \sum_x g(x) \cdot p_X(x) \quad \text{(discrete)}
$$
 
$$
E[g(X)] = \int_{-\infty}^{\infty} g(x) \cdot f_X(x)\, dx \quad \text{(continuous)}
$$

where:

- $g(X)$: any function applied to the random variable $X$
- $g(x)$: the function evaluated at a specific value $x$
- $p_X(x)$: probability mass function (for discrete $X$)
- $f_X(x)$: probability density function (for continuous $X$)

This result, known as the Law of the Unconscious Statistician (LOTUS), is remarkably useful: to find the [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) of $g(X)$, we don't need to first derive the distribution of $g(X)$.we simply weight $g(x)$ by the original distribution of $X$. The name playfully suggests that statisticians apply this formula "unconsciously" without deriving the transformed distribution. This is essential for computing [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis), where $g(X) = (X-\mu)^2$, and other moments, as well as for pricing derivatives where the payoff is a function of the underlying asset price.

Advertisement

## Variance and Standard Deviation

While [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) describes the center of a distribution, it tells us nothing about spread. Two investments might have the same expected return but vastly different risk profiles. Consider two stocks, both with 10% expected return. One might reliably return between 8% and 12%, while the other swings between -30% and +50%. Expected value alone cannot distinguish these dramatically different risk profiles. [Variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) quantifies this dispersion.

Variance

The variance of a random variable $X$ is the expected squared deviation from the mean:

$$
\text{Var}(X) = E[(X - \mu)^2] = E[X^2] - (E[X])^2
$$

where:

- $\text{Var}(X)$: variance of random variable $X$, measuring the spread or dispersion of values around the mean
- $E[\cdot]$: expected value operator
- $\mu = E[X]$: mean of $X$
- $(X - \mu)^2$: squared deviation from the mean.squaring ensures all deviations contribute positively and emphasizes larger deviations
- $E[X^2]$: expected value of $X$ squared (the "mean of the square")
- $(E[X])^2$: square of the expected value (the "square of the mean")

The standard deviation is $\sigma = \sqrt{\text{Var}(X)}$, which returns the measure to the original units of $X$.

The definition of [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) as expected squared deviation captures a natural idea: we measure how far each outcome lies from the center, square these distances to eliminate signs and emphasize large deviations, then average over all possible outcomes. Squaring serves two purposes: it makes all deviations positive (a return 5% below average should contribute to dispersion just as much as one 5% above), and it penalizes large deviations more heavily than small ones (being 10% off is more than twice as bad as being 5% off, which aligns with risk aversion in finance).

The second formula, $\text{Var}(X) = E[X^2] - (E[X])^2$, is computationally convenient. It says variance equals the "mean of the square minus the square of the mean." This formula is often easier to apply because it doesn't require centering the data before squaring. We can compute $E[X^2]$ and $E[X]$ separately and then combine them.

To see why these formulas are equivalent, expand the definition:

$$
E[(X - \mu)^2] = E[X^2 - 2\mu X + \mu^2] = E[X^2] - 2\mu E[X] + \mu^2 = E[X^2] - 2\mu^2 + \mu^2 = E[X^2] - \mu^2
$$

Since $\mu = E[X]$, this gives us $E[X^2] - (E[X])^2$. The derivation uses linearity of expectation: we can pass the expectation through the sum and pull constants outside, reducing the problem to computing $E[X^2]$ and $E[X]$.

### Financial Interpretation

[Standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) is the standard measure of risk in finance. A stock with 20% annualized volatility (standard deviation of returns) is considered riskier than one with 10% volatility. Under normality, roughly 68% of returns fall within one standard deviation of the mean, and 95% fall within two standard deviations. These percentages provide benchmarks for interpreting volatility: a 20% volatility stock with 10% expected return will, about two-thirds of the time, return between -10% and +30% in a given year.

In\[10\]:

Code

```
# Using the binary model from before
# Expected return already calculated
expected_return_squared = np.sum(outcomes**2 * probabilities)
variance = expected_return_squared - expected_return**2
std_dev = np.sqrt(variance)
```

Out\[11\]:

Console

```
E[R] = 8.00%
E[R²] = 0.0280
Var(R) = E[R²] - (E[R])² = 0.0280 - (0.0800)² = 0.0216
Standard deviation = 14.70%
```

The 14.7% [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) indicates substantial uncertainty around the 8% expected return. This volatility measure helps investors understand the range of outcomes they face and calibrate position sizes appropriately. A risk-averse investor might demand higher expected returns from this volatile investment compared to a more stable alternative.

### Properties of Variance

Variance has different properties than [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning), which reflects its role in measuring spread rather than center:

**Scaling**: $\text{Var}(aX) = a^2 \text{Var}(X)$, where $a$ is a constant multiplier. Doubling your position quadruples the variance. This quadratic scaling means that leverage amplifies risk faster than it amplifies return. This is a critical consideration for leveraged portfolios.

**Sum of independent variables**: If $X$ and $Y$ are independent:

$$
\text{Var}(X + Y) = \text{Var}(X) + \text{Var}(Y)
$$

This result follows from independence: when $X$ and $Y$ are independent, their [covariance](https://mbrenndoerfer.com/writing/variable-relationships-covariance-correlation-regression) is zero, eliminating the cross term that would otherwise appear. Independence means knowing the value of one variable provides no information about the other, so their variances add without reinforcement or cancellation.

**Sum of dependent variables**: In general:

$$
\text{Var}(X + Y) = \text{Var}(X) + \text{Var}(Y) + 2\text{Cov}(X, Y)
$$

where:

- $\text{Var}(X + Y)$: [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) of the sum of $X$ and $Y$
- $\text{Var}(X)$, $\text{Var}(Y)$: individual variances
- $\text{Cov}(X, Y)$: covariance between $X$ and $Y$
- The factor of 2 arises because when expanding $(X + Y - \mu_{X+Y})^2 = ((X - \mu_X) + (Y - \mu_Y))^2$, the cross term $2(X - \mu_X)(Y - \mu_Y)$ appears, and its expectation is $2\text{Cov}(X, Y)$

The covariance term is crucial for portfolio risk. If assets are negatively correlated (negative covariance), the portfolio variance is less than the sum of individual variances. This is the mathematical basis for diversification. When one asset falls, the negatively correlated asset tends to rise, partially offsetting the loss. The covariance term quantifies exactly how much this offsetting reduces overall portfolio risk.

Advertisement

## Covariance and Correlation

When analyzing multiple assets, we need to understand how they move together. [Covariance](https://mbrenndoerfer.com/writing/variable-relationships-covariance-correlation-regression) and correlation quantify this relationship and provide the mathematical foundation for portfolio construction and risk management. A portfolio's risk depends on each component's volatility and on how those components interact.

Covariance

The covariance between random variables $X$ and $Y$ measures their joint variability:

$$
\text{Cov}(X, Y) = E[(X - \mu_X)(Y - \mu_Y)] = E[XY] - E[X]E[Y]
$$

where:

- $\text{Cov}(X, Y)$: covariance between $X$ and $Y$
- $\mu_X = E[X]$: mean of $X$
- $\mu_Y = E[Y]$: mean of $Y$
- $(X - \mu_X)(Y - \mu_Y)$: product of deviations from respective means
- $E[XY]$: expected value of the product $XY$
- The units of covariance are the product of the units of $X$ and $Y$

The [covariance](https://mbrenndoerfer.com/writing/variable-relationships-covariance-correlation-regression) definition captures co-movement through the product of deviations. When both $X$ and $Y$ deviate in the same direction from their means.both above or both below.the product is positive. When they deviate in opposite directions, the product is negative. By taking the [expected value](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) of this product, covariance measures the average tendency for the variables to move together.

Positive covariance means $X$ and $Y$ tend to move together: when $X$ is above its mean, $Y$ tends to be above its mean too (both deviations have the same sign, so their product is positive). Negative covariance indicates opposite movements (deviations have opposite signs, so their product is negative). Zero covariance suggests no linear relationship. Knowing that $X$ is above average provides no systematic information about whether $Y$ is above or below average.

The equivalence of the two covariance formulas follows from expanding the definition:

$$
E[(X - \mu_X)(Y - \mu_Y)] = E[XY - \mu_Y X - \mu_X Y + \mu_X \mu_Y] = E[XY] - \mu_Y E[X] - \mu_X E[Y] + \mu_X \mu_Y = E[XY] - E[X]E[Y]
$$

The second formula, $E[XY] - E[X]E[Y]$, often simplifies calculations: it says covariance equals the expected product minus the product of expectations. If $X$ and $Y$ are independent, $E[XY] = E[X]E[Y]$, so the [covariance](https://mbrenndoerfer.com/writing/variable-relationships-covariance-correlation-regression) is zero. Independence implies zero covariance, though the converse is not generally true.

Correlation

The correlation coefficient normalizes covariance to lie between -1 and 1:

$$
\rho_{XY} = \frac{\text{Cov}(X, Y)}{\sigma_X \sigma_Y}
$$

where:

- $\rho_{XY}$: correlation coefficient between $X$ and $Y$ (bounded between -1 and 1)
- $\text{Cov}(X, Y)$: covariance between $X$ and $Y$
- $\sigma_X$: standard deviation of $X$
- $\sigma_Y$: standard deviation of $Y$
- $\sigma_X \sigma_Y$: product of standard deviations, which has the same units as covariance, making $\rho_{XY}$ dimensionless

Dividing by the product of standard deviations converts covariance to a standardized scale. A correlation of $\rho = 1$ means a perfect positive linear relationship where knowing $X$ exactly determines $Y$. A correlation of $\rho = -1$ means a perfect negative linear relationship, and $\rho = 0$ means no linear relationship.

Correlation is easier to interpret than [covariance](https://mbrenndoerfer.com/writing/variable-relationships-covariance-correlation-regression) because it's unitless and bounded. A correlation of 1 indicates a perfect positive linear relationship, -1 indicates a perfect negative linear relationship, and 0 indicates no linear relationship. The [normalization](https://mbrenndoerfer.com/writing/normalization-feature-scaling-min-max-machine-learning-guide) by standard deviations removes the scale dependence that makes covariance hard to interpret. Whether we measure returns in percentages or decimals, in dollars or euros, the correlation remains the same.

The bounds of -1 and 1 follow from the Cauchy-Schwarz inequality, a fundamental result in mathematics. This bound provides a universal scale for comparison: a correlation of 0.8 between stocks A and B means they move together more strongly than if the correlation were 0.5, regardless of what A and B are or how volatile they are individually.

Out\[12\]:

Visualization

![Scatter plot of paired returns forming an upward-sloping cloud, indicating strong positive correlation.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/correlation-positive-scatter.png)

Scatter plot of paired returns forming an upward-sloping cloud, indicating strong positive correlation.

![Scatter plot of paired returns with no visible slope, indicating near-zero correlation.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/correlation-zero-scatter.png)

Scatter plot of paired returns with no visible slope, indicating near-zero correlation.

![Scatter plot of paired returns forming a downward-sloping cloud, indicating strong negative correlation.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/correlation-negative-scatter.png)

Scatter plot of paired returns forming a downward-sloping cloud, indicating strong negative correlation.

Understanding correlations is essential for portfolio construction. Two assets with low or negative correlation provide diversification benefits: when one falls, the other may rise, reducing overall portfolio volatility. This is the mathematical mechanism behind the old adage "don't put all your eggs in one basket." By combining assets that don't move in lockstep, we can achieve lower portfolio risk than any individual asset offers.

Advertisement

## Higher Moments: Skewness and Kurtosis

Mean and [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) describe the first two moments of a distribution, but they don't fully characterize it. Two distributions can have identical means and variances yet differ dramatically in their shapes. Higher moments capture asymmetry and tail behavior, which are both critical for understanding financial risk. Investors care about average outcomes, volatility, and the likelihood of extreme gains versus extreme losses.

### Skewness

Skewness

Skewness measures asymmetry around the mean:

$$
\text{Skewness} = E\left[\left(\frac{X - \mu}{\sigma}\right)^3\right] = \frac{E[(X - \mu)^3]}{\sigma^3}
$$

where:

- $X$: random variable
- $\mu = E[X]$: mean of $X$
- $\sigma$: standard deviation of $X$
- $E[\cdot]$: expected value operator
- The cubic power captures asymmetry: positive deviations contribute positively ($+^3 = +$) while negative deviations contribute negatively ($-^3 = -$), so a distribution with more extreme positive deviations has positive skewness
- Dividing by $\sigma^3$ makes skewness dimensionless and scale-invariant, allowing comparison across different variables

The choice of the cubic power is not arbitrary. It's the lowest odd power that captures asymmetry. The first power (plain deviations) would sum to zero by definition of the mean. The second power (squared deviations) gives [variance](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) but loses sign information. The third power preserves the sign of each deviation, allowing positive and negative extremes to contribute differently. When the distribution has a long right tail with occasional extreme positive values, these large positive cubes dominate and yield positive skewness. A long left tail with extreme negative values yields negative skewness.

A distribution's skewness reveals the direction and magnitude of its asymmetry:

- **Positive skewness**: Right tail is longer. There are occasional large positive values. Lottery tickets exhibit positive skewness, with many small losses and rare large gains.
- **Negative skewness**: Left tail is longer. Occasional large negative values occur. Equity returns often show negative skewness, with gradual gains punctuated by sharp crashes.
- **Zero skewness**: Symmetric, like the [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science).

Out\[13\]:

Visualization

![Three probability density curves showing negative, zero, and positive skewness.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/skewness-distribution-examples.png)

Three probability density curves showing negative, zero, and positive skewness.

Investors typically dislike negative [skewness](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis). Given two investments with identical mean and variance, most would prefer the one with positive skewness because occasional large gains are more appealing than occasional large losses. This preference reflects fundamental human psychology. Losses loom larger than equivalent gains, a phenomenon documented extensively in behavioral finance.

### Kurtosis

Kurtosis

Kurtosis measures the heaviness of distribution tails:

$$
\text{Kurtosis} = E\left[\left(\frac{X - \mu}{\sigma}\right)^4\right] = \frac{E[(X - \mu)^4]}{\sigma^4}
$$

where:

- $X$: random variable
- $\mu = E[X]$: mean of $X$
- $\sigma$: standard deviation of $X$
- The fourth power emphasizes extreme deviations because raising to the fourth power magnifies large values much more than small ones (e.g., $2^4 = 16$ but $4^4 = 256$), making kurtosis highly sensitive to tail behavior
- Unlike the cubic power in skewness, the fourth power is always positive, so both tails contribute positively

Excess kurtosis subtracts 3 (the kurtosis of a normal distribution): $\text{Excess Kurtosis} = \text{Kurtosis} - 3$. This normalization sets the normal distribution as the baseline with excess kurtosis of zero.

[Kurtosis](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) uses the fourth power of standardized deviations, which dramatically amplifies extreme values. While squaring a deviation of 4 gives 16, raising it to the fourth power gives 256. This sensitivity to [outliers](https://mbrenndoerfer.com/writing/data-quality-outliers-measurement-error-missing-data) is precisely what makes kurtosis useful for detecting [fat tails](https://mbrenndoerfer.com/writing/probability-distributions-quantitative-finance). It picks up the signal from rare but extreme events that other measures might miss. The fourth power, being even, treats positive and negative extremes equally, measuring total tail heaviness rather than asymmetry.

Kurtosis captures the probability of extreme values:

- **Excess kurtosis > 0 (leptokurtic)**: Heavier tails than normal. Extreme events are more likely. Financial returns typically exhibit positive excess kurtosis.
- **Excess kurtosis = 0 (mesokurtic)**: [Normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science).
- **Excess kurtosis < 0 (platykurtic)**: Lighter tails than normal. Extreme events are less likely.

The fact that financial returns have "fat tails" (positive excess kurtosis) is one of the most important empirical findings in finance. Events that should be extremely rare under normality (such as a 20-standard-deviation move) occur far more frequently than the normal distribution predicts. The 2008 financial crisis and 2020 COVID crash illustrated this dramatically, when "once-in-a-century" moves happened multiple times.

In\[14\]:

Code

```
from scipy.stats import t, kurtosis

# Generate samples from normal and t-distributions
np.random.seed(42)
n_samples = 100000

normal_samples = np.random.randn(n_samples)
t_samples = t.rvs(
    df=4, size=n_samples
)  # t-distribution with 4 degrees of freedom

# Calculate excess kurtosis
normal_kurtosis = kurtosis(normal_samples)
t_kurtosis = kurtosis(t_samples)
```

Out\[15\]:

Console

```
Normal distribution excess kurtosis: -0.008
Student's t (df=4) excess kurtosis: 17.487

Probability of |X| > 4:
Normal distribution: 0.0050%
Student's t (df=4): 1.5800%
```

Out\[16\]:

Visualization

![Line plot comparing standard normal density to Student's t density with df=4 over x from -6 to 6.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/normal-vs-t-distribution-full.png)

Line plot comparing standard normal density to Student's t density with df=4 over x from -6 to 6.

![Line plot focused on x > 2 with shaded areas showing higher tail density under the t-distribution than the normal.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/normal-vs-t-distribution-tails.png)

Line plot focused on x > 2 with shaded areas showing higher tail density under the t-distribution than the normal.

At x = 3, the [t-distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) with 4 [degrees of freedom](https://mbrenndoerfer.com/writing/t-test-student-t-distribution-one-sample-two-sample-pooled-welch-paired-assumptions-decision-framework) has about 15 times the one-tail probability of the normal distribution. This matters enormously for risk management.underestimating tail risk can lead to catastrophic losses. A model that assumes normality might report a near-zero probability of a 4-sigma loss, while the true probability under [fat tails](https://mbrenndoerfer.com/writing/probability-distributions-quantitative-finance) is substantially higher.

Advertisement

## Conditional Probability

[Conditional probability](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) answers the question: "Given that event $B$ occurred, what's the probability of event $A$?" This concept is essential in finance, where we constantly update beliefs based on new information. Markets incorporate news continuously, so our probability assessments must evolve accordingly.

Conditional Probability

The conditional probability of $A$ given $B$ is:

$$
P(A|B) = \frac{P(A \cap B)}{P(B)}
$$

where:

- $P(A|B)$: probability of event $A$ occurring given that event $B$ has occurred
- $P(A \cap B)$: probability that both $A$ and $B$ occur (joint probability)
- $P(B)$: probability of event $B$ (must be greater than 0) The formula captures a simple idea: among all the outcomes where $B$ occurred, what fraction also had $A$ occur? The denominator restricts our attention to the $B$ -world, and the numerator counts the favorable outcomes within that world.

The [conditional probability](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) formula implements a natural idea: conditioning on $B$ means restricting our universe of possibilities to only those outcomes where $B$ occurred. Within this restricted universe, we ask what fraction of outcomes also satisfy $A$. The denominator $P(B)$ represents the size of this restricted universe, while the numerator $P(A \cap B)$ represents the portion where both conditions hold.

The formula says: to find the probability of $A$ given $B$, we restrict attention to outcomes where $B$ occurred (the denominator) and count the fraction where $A$ also occurred (the numerator). This restriction operation is the essence of conditioning: we're not computing probability over the entire sample space but only over the subset where $B$ holds.

### Financial Example: Credit Risk

Suppose we're analyzing a corporate bond portfolio. Define:

- $A$ = bond defaults within one year
- $B$ = bond is rated BB (below investment grade)

If 5% of the portfolio are BB-rated bonds, 1% of all bonds default, and 0.3% of bonds are both BB-rated and default, then:

$$
P(\text{Default}|\text{BB}) = \frac{P(\text{Default} \cap \text{BB})}{P(\text{BB})} = \frac{0.003}{0.05} = 0.06 = 6\%
$$

where:

- $P(\text{Default}|\text{BB})$: [probability of default](https://mbrenndoerfer.com/writing/credit-risk-fundamentals-pd-lgd-ead-expected-loss) given the bond is BB-rated
- $P(\text{Default} \cap \text{BB}) = 0.003$: probability a bond is both BB-rated and defaults (0.3%)
- $P(\text{BB}) = 0.05$: probability a bond is BB-rated (5%)

BB-rated bonds have a 6% default probability, compared to 1% for the overall portfolio. This [conditional probability](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) helps in setting appropriate credit spreads. A BB-rated bond should offer a higher yield to compensate for this elevated default risk. The calculation also illustrates how conditioning on information, specifically the rating, dramatically changes our probability assessment.

### Independence

Two events are independent if knowing that one occurred tells us nothing about the other. Independence is a useful simplifying assumption that, when valid, greatly simplifies probability calculations.

Independence

Events $A$ and $B$ are independent if and only if:

$$
P(A|B) = P(A) \quad \text{or equivalently} \quad P(A \cap B) = P(A) \cdot P(B)
$$

where:

- $P(A|B) = P(A)$: learning $B$ occurred doesn't change the probability of $A$
- $P(A \cap B) = P(A) \cdot P(B)$: the joint probability factors into the product of marginals

The two conditions are equivalent: substituting the conditional probability formula $P(A|B) = P(A \cap B)/P(B)$ into the first condition and multiplying both sides by $P(B)$ yields the second.

The first characterization captures the intuitive meaning of independence: observing $B$ provides no information about $A$, so our probability assessment for $A$ remains unchanged. The second characterization, the multiplication rule, provides a computational criterion: if the joint probability equals the product of marginal probabilities, the events are independent.

Independence is a powerful simplifying assumption. If daily returns are independent (which they approximately are for many assets), we can compute multi-day probabilities by multiplying single-day probabilities. However, real markets exhibit dependencies, especially during crises when correlations spike. The [independence assumption](https://mbrenndoerfer.com/writing/confidence-intervals-test-assumptions-z-test-t-test-choosing) should always be verified rather than assumed blindly.

Advertisement

## Bayes' Theorem

Bayes' Theorem provides a systematic method for updating probabilities when new information arrives, establishing the mathematical basis for learning from data and adapting beliefs. These skills are essential in finance, where conditions change constantly.

Bayes' Theorem

$$
P(A|B) = \frac{P(B|A) \cdot P(A)}{P(B)}
$$

where:

- $P(A|B)$: posterior probability of $A$ given evidence $B$
- $P(B|A)$: likelihood of observing $B$ if $A$ is true
- $P(A)$: prior probability of $A$ before observing $B$
- $P(B)$: marginal probability of $B$ (normalizing constant)

In words: the probability of $A$ given $B$ equals the probability of $B$ given $A$, times the prior probability of $A$, divided by the probability of $B$.

Bayes' Theorem follows directly from the definition of [conditional probability](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) applied twice. Starting from $P(A|B) = P(A \cap B)/P(B)$ and noting that $P(A \cap B) = P(B|A) \cdot P(A)$ (by rearranging the conditional probability definition for $B$ given $A$), we obtain the theorem. Despite this simple derivation, the theorem has practical implications for reasoning under uncertainty.

The components have specific names that reflect their roles in the updating process:

- **$P(A)$**: Prior probability, representing our belief about $A$ before observing $B$
- **$P(B|A)$**: Likelihood, measuring how probable the evidence $B$ is if $A$ is true
- **$P(A|B)$**: Posterior probability, representing our updated belief about $A$ after observing $B$
- **$P(B)$**: Evidence probability, which is a normalizing constant

The theorem describes rational belief revision: we start with a prior belief, observe evidence, assess how likely that evidence would be under different hypotheses (the likelihoods), and combine these to form a posterior belief. The posterior then becomes the prior for the next round of updating as more evidence arrives.

### Worked Example: Updating Default Probabilities

A bank is evaluating a corporate borrower. Based on the firm's industry and size, the bank initially estimates a 3% [probability of default](https://mbrenndoerfer.com/writing/credit-risk-fundamentals-pd-lgd-ead-expected-loss) within one year. This is the prior probability.

The bank then receives the firm's quarterly financial statements showing deteriorating profit margins. Historical data shows:

- 40% of companies that eventually defaulted showed deteriorating margins in their last year
- 10% of companies that did not default showed deteriorating margins

The bank wants to update its default probability given this new information.

**Step 1: Define events**

- $D$ = company defaults within one year
- $M$ = company shows deteriorating margins

**Step 2: List known probabilities**

- $P(D) = 0.03$ (prior default probability)
- $P(D^c) = 0.97$ (prior probability of no default)
- $P(M|D) = 0.40$ (likelihood of margin deterioration given default)
- $P(M|D^c) = 0.10$ (likelihood of margin deterioration given no default)

**Step 3: Calculate $P(M)$ using the law of total probability**

Before applying Bayes' Theorem, we need the total probability of observing deteriorating margins, regardless of whether default occurs. The law of total probability provides this by considering all mutually exclusive ways the evidence could arise:

$$
P(M) = P(M|D) \cdot P(D) + P(M|D^c) \cdot P(D^c)
$$

where:

- $P(M)$: total probability of observing deteriorating margins
- $P(M|D)$: probability of deteriorating margins given the company defaults
- $P(D)$: prior [probability of default](https://mbrenndoerfer.com/writing/credit-risk-fundamentals-pd-lgd-ead-expected-loss)
- $P(M|D^c)$: probability of deteriorating margins given no default
- $P(D^c)$: probability of no default

This formula works because every company either defaults or doesn't, so we can decompose the probability of deteriorating margins into these two mutually exclusive cases. We weight each [conditional probability](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) by the probability of that case occurring. The law of total probability essentially averages the conditional probabilities, weighted by the probability of each conditioning event.

In\[17\]:

Code

```
# Prior probabilities
p_default = 0.03
p_no_default = 0.97

# Likelihoods
p_margin_given_default = 0.40
p_margin_given_no_default = 0.10

# Calculate P(M) using law of total probability
p_margin = (
    p_margin_given_default * p_default
    + p_margin_given_no_default * p_no_default
)
```

Out\[18\]:

Console

```
P(Deteriorating Margins) = 0.4 × 0.03 + 0.1 × 0.97
P(Deteriorating Margins) = 0.1090
```

**Step 4: Apply Bayes' Theorem**

Now we have all the ingredients to compute the posterior probability:

$$
P(D|M) = \frac{P(M|D) \cdot P(D)}{P(M)}
$$

where:

- $P(D|M)$: posterior [probability of default](https://mbrenndoerfer.com/writing/credit-risk-fundamentals-pd-lgd-ead-expected-loss) given deteriorating margins (what we want to find)
- $P(M|D)$: likelihood of deteriorating margins among defaulting companies (0.40)
- $P(D)$: prior default probability (0.03)
- $P(M)$: probability of deteriorating margins (calculated in Step 3)

The numerator $P(M|D) \cdot P(D)$ represents the probability of both defaulting and showing deteriorating margins. The denominator normalizes this by dividing by the total probability of the evidence.

In\[19\]:

Code

```
# Bayes' Theorem
p_default_given_margin = (p_margin_given_default * p_default) / p_margin
```

Out\[20\]:

Console

```
P(Default | Deteriorating Margins) = (0.4 × 0.03) / 0.1090
P(Default | Deteriorating Margins) = 0.1101

Updated default probability: 11.01%
Prior default probability: 3.00%
Increase factor: 3.7x
```

The deteriorating margins more than tripled our assessed default probability from 3% to about 11%. This updated probability should inform lending decisions, pricing, and reserve requirements. The magnitude of this update reflects both the strength of the evidence, since deteriorating margins are much more common among defaulters, and the prior belief that default was already considered unlikely.

### Visualizing Bayes' Theorem

The following visualization shows how the prior probability updates to the posterior as we incorporate new evidence.

Out\[21\]:

Visualization

![Bar chart comparing prior and posterior probabilities for default and no-default scenarios.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/bayesian-probability-update.png)

Bar chart comparing prior and posterior probabilities for default and no-default scenarios.

Advertisement

## Practical Implementation: Simulating Returns and Risk

This section brings together the concepts from this chapter by simulating stock returns and computing risk measures. This exercise demonstrates how [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) translate to financial risk analysis.

### Simulating Daily Returns

We'll simulate returns using the normal distribution, a common assumption in finance, and compute key statistics.

In\[22\]:

Code

```
import numpy as np

np.random.seed(42)

# Parameters for daily returns
annual_return = 0.10  # 10% expected annual return
annual_volatility = 0.20  # 20% annual volatility

# Convert to daily parameters (252 trading days)
trading_days = 252
daily_return = annual_return / trading_days
daily_volatility = annual_volatility / np.sqrt(trading_days)

# Simulate 5 years of daily returns
n_years = 5
n_days = trading_days * n_years
returns = np.random.normal(daily_return, daily_volatility, n_days)
```

Out\[23\]:

Console

```
Simulation Parameters:
  Expected annual return: 10.0%
  Annual volatility: 20.0%
  Daily expected return: 0.0397%
  Daily volatility: 1.2599%

Simulated 1260 trading days (5 years)
```

### Computing Sample Statistics

Now we calculate the sample mean, [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis), skewness, and kurtosis.

In\[24\]:

Code

```
from scipy import stats

# Sample statistics
sample_mean = np.mean(returns)
sample_std = np.std(returns, ddof=1)  # ddof=1 for sample std
sample_skew = stats.skew(returns)
sample_kurtosis = stats.kurtosis(returns)  # Excess kurtosis

# Annualize sample statistics
annualized_mean = sample_mean * trading_days
annualized_std = sample_std * np.sqrt(trading_days)
```

Out\[25\]:

Console

```
Sample Statistics (Daily):
  Mean: 0.000877
  Standard Deviation: 0.012467
  Skewness: 0.0792
  Excess Kurtosis: 0.0151

Annualized:
  Mean Return: 22.10% (target: 10.00%)
  Volatility: 19.79% (target: 20.00%)
```

The sample statistics closely match our target parameters, with the annualized mean near 10% and volatility near 20%. The slight deviations illustrate sampling variability. Even with 1,260 observations, estimates aren't perfectly precise. The near-zero [skewness](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) and excess kurtosis confirm our simulated returns follow a [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science), as expected from our simulation design.

Advertisement

### Visualizing the Return Distribution

Out\[26\]:

Visualization

![Histogram of returns with overlaid normal distribution curve.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/simulated-returns-histogram.png)

Histogram of returns with overlaid normal distribution curve.

Advertisement

### Computing Value at Risk

[Value at Risk](https://mbrenndoerfer.com/writing/market-risk-var-expected-shortfall-stress-testing) (VaR) is a common risk measure that answers: "What's the worst loss we'd expect with 95% (or 99%) confidence?" We compute VaR using the percentile of the [return distribution](https://mbrenndoerfer.com/writing/stylized-facts-financial-returns-fat-tails-volatility-clustering).

In\[27\]:

Code

```
# Value at Risk at 95% and 99% confidence levels
var_95 = np.percentile(returns, 5)  # 5th percentile = 95% VaR
var_99 = np.percentile(returns, 1)  # 1st percentile = 99% VaR

# Parametric VaR using normal distribution
var_95_parametric = sample_mean + stats.norm.ppf(0.05) * sample_std
var_99_parametric = sample_mean + stats.norm.ppf(0.01) * sample_std
```

Out\[28\]:

Console

```
Value at Risk (Daily):

95% VaR:
  Historical: -1.9143%
  Parametric (Normal): -1.9629%

99% VaR:
  Historical: -2.6514%
  Parametric (Normal): -2.8125%

Interpretation: With 95% confidence, daily losses won't exceed 1.91%
```

The 95% [VaR](https://mbrenndoerfer.com/writing/market-risk-var-expected-shortfall-stress-testing) of approximately -1.9% means we expect daily losses to exceed this threshold only 5% of the time (roughly once per month of trading). The 99% VaR of about -2.8% represents more extreme tail risk and is exceeded only 1% of the time.

Historical VaR directly uses the percentile of past returns. Parametric VaR assumes a [normal distribution](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) and calculates the percentile analytically. When returns are truly normal, as in our simulation, both methods give similar results. For real market data with [fat tails](https://mbrenndoerfer.com/writing/probability-distributions-quantitative-finance), historical VaR is often more conservative.

Out\[29\]:

Visualization

![Histogram of returns with vertical lines marking 95% and 99% VaR thresholds and shaded tail regions.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/value-at-risk-visualization.png)

Histogram of returns with vertical lines marking 95% and 99% VaR thresholds and shaded tail regions.

Advertisement

### Converting Price Path from Returns

Starting from an initial price, we can construct a price path using cumulative returns.

Out\[30\]:

Visualization

![Line chart showing one simulated stock price path starting at 100 over 5 years of trading days.](https://assets.mbrenndoerfer.com/notebooks/2_probability_fundamentals_files/simulated-stock-price-path.png)

Line chart showing one simulated stock price path starting at 100 over 5 years of trading days.

Out\[31\]:

Console

```
Initial price: $100.00
Final price: $273.74
Total return: 173.74%
Annualized return: 22.31%
```

The simulated price path demonstrates the [random walk](https://mbrenndoerfer.com/writing/brownian-motion-random-walk-geometric-brownian-motion) nature of stock prices under our model assumptions. The final price reflects the cumulative effect of daily returns, with the annualized return reasonably close to our 10% target parameter. The path shows typical stock behavior.periods of gains and losses, with an overall upward drift reflecting positive expected returns.

Advertisement

## Key Parameters

The key parameters for simulating and analyzing financial returns are:

- **annual\_return**: Expected annual return (e.g., 10%). Determines the drift of the price process and the center of the [return distribution](https://mbrenndoerfer.com/writing/stylized-facts-financial-returns-fat-tails-volatility-clustering).
- **annual\_volatility**: Annualized [standard deviation](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis) of returns (e.g., 20%). Controls the dispersion and risk of the simulated returns.
- **trading\_days**: Number of trading days per year (typically 252). Used to convert between daily and annual parameters.
- **confidence\_level**: For [VaR](https://mbrenndoerfer.com/writing/market-risk-var-expected-shortfall-stress-testing) calculations, typically 95% or 99%. Higher confidence means more conservative risk estimates.
- **initial\_price**: Starting price for the simulation. All subsequent prices are computed relative to this value.

Advertisement

## Limitations and Impact

[Probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) provides powerful tools for [financial modeling](https://mbrenndoerfer.com/writing/introduction-stock-market-monte-carlo-simulation), but practitioners must understand its limitations.

The assumption of known, stable [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) rarely holds perfectly in financial markets. Market regimes shift, causing parameters like volatility and correlation to change over time. Models that work during calm markets may fail during crises. The 2008 financial crisis saw correlations between asset classes spike toward 1, precisely when diversification was most needed. Models calibrated on historical data couldn't anticipate this regime shift because the past distribution was no longer representative of the present.

[Fat tails](https://mbrenndoerfer.com/writing/probability-distributions-quantitative-finance) present another fundamental challenge. Real financial returns exhibit excess [kurtosis](https://mbrenndoerfer.com/writing/descriptive-statistics-guide-python-data-analysis), meaning extreme events occur far more frequently than normal distributions predict. A "25-sigma event" that should happen once every $10^{135}$ years under normality can occur far more frequently in real markets. Risk models that assume normality systematically underestimate the probability of market crashes, leading to inadequate capital reserves and [risk limits](https://mbrenndoerfer.com/writing/risk-management-practices-policies-limits-hedging-governance). This contributed to the 2008 crisis, where many financial institutions held positions that were "safe" according to normal-distribution-based models but proved catastrophic when fat tails materialized.

The gap between sample statistics and true parameters also matters. With finite data, our estimates of means, variances, and correlations contain [sampling error](https://mbrenndoerfer.com/writing/sampling-populations-observations-statistical-methods-guide). Optimization procedures that treat estimated parameters as true values can generate portfolios that overfit to noise and perform poorly out of sample. This problem is especially severe for expected returns, which require long histories to estimate precisely.

Despite these limitations, [probability theory](https://mbrenndoerfer.com/writing/probability-basics-foundation-statistical-reasoning) has improved finance materially. It allows consistent, quantitative risk assessment across diverse assets. [Value at Risk](https://mbrenndoerfer.com/writing/market-risk-var-expected-shortfall-stress-testing), while imperfect, gives a common language for risk limits and capital allocation. Option pricing theory, built on [probability distributions](https://mbrenndoerfer.com/writing/probability-distributions-guide-data-science) of future prices, enabled the multi-trillion-dollar derivatives market. [Portfolio optimization](https://mbrenndoerfer.com/writing/differential-calculus-optimization-quantitative-finance), grounded in expected returns and covariances, guides trillions in institutional assets.

The key is using these tools while remaining aware of their assumptions. Supplement parametric models with stress tests. Use longer-tailed distributions when appropriate. Update beliefs as new data arrives, following Bayes' theorem. All models are approximations: useful, but not reality.
