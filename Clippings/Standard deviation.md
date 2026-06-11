---
title: Standard deviation
source: https://en.wikipedia.org/wiki/Standard_deviation
author:
  - "[[Wikipedia]]"
published: 2001-03-07
created: 2026-06-06
description:
tags:
  - clippings
  - Quant
  - mathematics
---
![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Standard_deviation_diagram.svg/250px-Standard_deviation_diagram.svg.png)

A plot of normal distribution (or bell-shaped curve) where each band has a width of 1 standard deviation–See also: 68–95–99.7 rule.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Normal-distribution-cumulative-density-function.svg/250px-Normal-distribution-cumulative-density-function.svg.png)

Cumulative distribution function of a normal distribution with expected value 0 and standard deviation 1

In [statistics](https://en.wikipedia.org/wiki/Statistics "Statistics"), the **standard deviation** is a measure of the amount of variation of the values of a variable about its [(arithmetic) average](https://en.wikipedia.org/wiki/Arithmetic_mean "Arithmetic mean").[^1] A low standard [deviation](https://en.wikipedia.org/wiki/Deviation_\(statistics\) "Deviation (statistics)") indicates that the values of a set tend to be close to their average, while a high standard deviation indicates that the values are spread out over a wider range. Standard deviation may be abbreviated **SD** or **std dev**, and is most commonly represented in mathematical texts and equations by the lowercase [Greek letter](https://en.wikipedia.org/wiki/Greek_alphabet "Greek alphabet") **[σ](https://en.wikipedia.org/wiki/Sigma "Sigma")** (sigma).

The standard deviation of a [random variable](https://en.wikipedia.org/wiki/Random_variable "Random variable"), [sample](https://en.wikipedia.org/wiki/Sample_\(statistics\) "Sample (statistics)"), [statistical population](https://en.wikipedia.org/wiki/Statistical_population "Statistical population"), [data set](https://en.wikipedia.org/wiki/Data_set "Data set") or [probability distribution](https://en.wikipedia.org/wiki/Probability_distribution "Probability distribution") is the [square root](https://en.wikipedia.org/wiki/Square_root "Square root") of its [variance](https://en.wikipedia.org/wiki/Variance "Variance") (the variance being the average of the [squared deviations from the mean](https://en.wikipedia.org/wiki/Squared_deviations_from_the_mean "Squared deviations from the mean")). A useful property of the standard deviation is that, unlike the variance, it is expressed in the same unit as the data. Standard deviation can also be used to calculate [standard error](https://en.wikipedia.org/wiki/Standard_error "Standard error") for a finite sample, and to determine [statistical significance](https://en.wikipedia.org/wiki/Statistical_significance "Statistical significance").

When only a [sample](https://en.wikipedia.org/wiki/Statistical_sample "Statistical sample") of data from a population is available, the term *standard deviation of the sample* or *sample standard deviation* can refer to either the above-mentioned quantity as applied to those data, or to a modified quantity that is an unbiased estimate of the *population standard deviation* (the standard deviation of the entire population).

## Relationship with standard error and statistical significance

The standard deviation of a [population](https://en.wikipedia.org/wiki/Statistical_population "Statistical population") or sample and the [standard error](https://en.wikipedia.org/wiki/Standard_error "Standard error") of a statistic (e.g., of the sample mean) are quite different, but related. The sample mean's standard error is the standard deviation of the set of means that would be found by drawing an [infinite](https://en.wikipedia.org/wiki/Infinity "Infinity") number of repeated samples from the population and computing a mean for each sample. The mean's standard error turns out to equal the population standard deviation divided by the square root of the sample size, and is estimated by using the sample standard deviation divided by the square root of the sample size. For example, a poll's standard error (what is reported as the [margin of error](https://en.wikipedia.org/wiki/Margin_of_error "Margin of error") of the poll) is the expected standard deviation of the estimated mean if the same poll were to be conducted multiple times. Thus, the standard error estimates the standard deviation of an estimate, which itself measures how much the estimate depends on the particular sample that was taken from the population.

In [science](https://en.wikipedia.org/wiki/Science "Science"), it is common to report both the standard deviation of the data (as a summary statistic) and the standard error of the estimate (as a measure of potential error in the findings). By convention, only effects more than two standard errors away from a null expectation are considered " [statistically significant](https://en.wikipedia.org/wiki/Statistical_significance "Statistical significance") ", a safeguard against spurious conclusion that is really due to random sampling error.

## Basic examples

### Population standard deviation of grades of eight students

Suppose that the entire population of interest is eight students in a particular class. Their marks are the following eight values: 
$$
{\displaystyle 2,\ 4,\ 4,\ 4,\ 5,\ 5,\ 7,\ 9.}
$$

For a finite set of numbers, the population standard deviation is found by taking the [square root](https://en.wikipedia.org/wiki/Square_root "Square root") of the [average](https://en.wikipedia.org/wiki/Average "Average") of the squared deviations of the values subtracted from their average value, that is: 
$$
{\displaystyle \sigma ={\sqrt {\mathrm {average} \left((v-\mu )^{2}{\text{ for }}v\in \mathrm {values} \right)}}{\text{ where }}\mu =\mathrm {average} (\mathrm {values} ).}
$$

These eight data points have the [mean](https://en.wikipedia.org/wiki/Mean "Mean") (average) of 5: 
$$
{\displaystyle \mu ={\frac {2+4+4+4+5+5+7+9}{8}}={\frac {40}{8}}=5.}
$$

First, calculate the deviations of each data point from the mean, and [square](https://en.wikipedia.org/wiki/Square_\(algebra\) "Square (algebra)") the result of each: 
$$
{\displaystyle {\begin{array}{lll}(2-5)^{2}=(-3)^{2}=9&&(5-5)^{2}=0^{2}=0\\(4-5)^{2}=(-1)^{2}=1&&(5-5)^{2}=0^{2}=0\\(4-5)^{2}=(-1)^{2}=1&&(7-5)^{2}=2^{2}=4\\(4-5)^{2}=(-1)^{2}=1&&(9-5)^{2}=4^{2}=16.\\\end{array}}}
$$

The [variance](https://en.wikipedia.org/wiki/Variance "Variance") is the mean of these values: 
$$
{\displaystyle \sigma ^{2}={\frac {9+1+1+1+0+0+4+16}{8}}={\frac {32}{8}}=4}
$$

and the *population* standard deviation is equal to the square root of the variance: 
$$
{\displaystyle \sigma ={\sqrt {4}}=2.}
$$

This formula is valid only if the eight values with which we began form the complete population. If the values instead were a random sample drawn from some larger parent population (for example, there were 8 students randomly and independently chosen from a student population of 2 million), then one divides by 7 (which is *n* − 1) instead of 8 (which is n) in the denominator of the last formula, and the result is ${\textstyle s={\sqrt {32/7}}\approx 2.1.}$ In that case, the result of the original formula would be called the *sample* standard deviation and denoted by ${\textstyle s}$ instead of ${\displaystyle \sigma .}$ Dividing by ${\textstyle n-1}$ rather than by ${\textstyle n}$ gives an unbiased estimate of the variance of the larger parent population. This is known as *[Bessel's correction](https://en.wikipedia.org/wiki/Bessel%27s_correction "Bessel's correction")*.[^2] [^3] Roughly, the reason for it is that the formula for the sample variance relies on computing differences of observations from the sample mean, and the sample mean itself was constructed to be as close as possible to the observations, so just dividing by n would underestimate the variability.

### Standard deviation of average height for adult men

If the population of interest is approximately normally distributed, the standard deviation provides information on the proportion of observations above or below certain values. For example, the [average height for adult men](https://en.wikipedia.org/wiki/Average_human_height "Average human height") in the [United States](https://en.wikipedia.org/wiki/United_States "United States") is about 69 inches,[^4] with a standard deviation of around 3 inches. This means that most men (about 68%, assuming a [normal distribution](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution")) have a height within 3 inches of the mean (66–72 inches) – one standard deviation – and almost all men (about 95%) have a height within 6 inches of the mean (63–75 inches) – two standard deviations. If the standard deviation were zero, then all men would share an identical height of 69 inches. Three standard deviations account for 99.73% of the sample population being studied, assuming the distribution is [normal](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution") or bell-shaped (see the [68–95–99.7 rule](https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule "68–95–99.7 rule"), or the *empirical rule*, for more information).

## Definition of population values

Let μ be the [expected value](https://en.wikipedia.org/wiki/Expected_value "Expected value") (the average) of a [random variable](https://en.wikipedia.org/wiki/Random_variable "Random variable") X with probability density function f: 
$$
{\displaystyle \mu \equiv \operatorname {\mathbb {E} } [X]=\int _{-\infty }^{+\infty }x\,f(x)\,{\mathrm {d} }x.}
$$
 The standard deviation σ of X is defined as 
$$
{\displaystyle \sigma \equiv {\sqrt {\operatorname {\mathbb {E} } \left[\left(X-\mu \right)^{2}\right]}}={\sqrt {\int _{-\infty }^{+\infty }\left(x-\mu \right)^{2}f(x)\ {\mathrm {d} }x\;}}\ ,}
$$
 which can be shown to equal ${\textstyle {\sqrt {\operatorname {\mathbb {E} } \left[X^{2}\right]-\left(\operatorname {\mathbb {E} } \left[X\right]\right)^{2}}}\,.}$

In other words, the standard deviation is the square root of the [variance](https://en.wikipedia.org/wiki/Variance "Variance") of X.

The standard deviation of a probability distribution is the same as that of a random variable having that distribution.

Not all random variables have a standard deviation. If the distribution has [fat tails](https://en.wikipedia.org/wiki/Fat_tails "Fat tails") going out to infinity, the standard deviation might not exist, because the integral might not converge. The [normal distribution](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution") has tails going out to infinity, but its mean and standard deviation do exist, because the tails diminish quickly enough. The [Pareto distribution](https://en.wikipedia.org/wiki/Pareto_distribution "Pareto distribution") with parameter ${\displaystyle \alpha \in (1,2]}$ has a mean, but not a standard deviation (loosely speaking, the standard deviation is infinite). The [Cauchy distribution](https://en.wikipedia.org/wiki/Cauchy_distribution "Cauchy distribution") has neither a mean nor a standard deviation.

### Discrete random variable

In the case where X takes random values from a finite data set *x* <sub>1</sub>, *x* <sub>2</sub>,..., *x* <sub><i>N</i></sub>, with each value having the same probability, the standard deviation is

$$
{\displaystyle \sigma ={\sqrt {{\frac {1}{N}}\ \left[\left(x_{1}-\mu \right)^{2}+\left(x_{2}-\mu \right)^{2}+\cdots +\left(x_{N}-\mu \right)^{2}\right]\;}}\ ,~~{\text{ where }}~~\mu \equiv {\frac {1}{N}}\left(x_{1}+\cdots +x_{N}\right)\ ,}
$$
 Note: The above expression has a built-in bias. See the discussion on [Bessel's correction](https://en.wikipedia.org/wiki/Bessel%27s_correction "Bessel's correction") further down below.

or, by using [summation](https://en.wikipedia.org/wiki/Summation "Summation") notation,

$$
{\displaystyle \sigma ={\sqrt {{\frac {1}{N}}\sum _{i=1}^{N}\left(x_{i}-\mu \right)^{2}\;}}\ ,~~{\text{ where }}~~\mu \equiv {\frac {1}{N}}\sum _{i=1}^{N}x_{i}~.}
$$

If, instead of having equal probabilities, the values have different probabilities, let *x* <sub>1</sub> have probability *p* <sub>1</sub>, *x* <sub>2</sub> have probability *p* <sub>2</sub>,..., *x* <sub><i>N</i></sub> have probability *p* <sub><i>N</i></sub>. In this case, the standard deviation will be 
$$
{\displaystyle \sigma ={\sqrt {\sum _{i=1}^{N}p_{i}\left(x_{i}-\mu \right)^{2}\;}}\ ,~~{\text{ where }}~~\mu \equiv \sum _{i=1}^{N}p_{i}x_{i}\,.}
$$

### Continuous random variable

The standard deviation of a [continuous real-valued random variable](https://en.wikipedia.org/wiki/Continuous_distribution "Continuous distribution") X with [probability density function](https://en.wikipedia.org/wiki/Probability_density_function "Probability density function") *p* (*x*) is 
$$
{\displaystyle \sigma ={\sqrt {\int _{\mathbf {X} }\left(x-\mu \right)^{2}\,p(x)\,{\mathrm {d} }x}}\,,~~{\text{ where }}~~\mu \equiv \int _{\mathbf {X} }x\,p(x)\,{\mathrm {d} }x\,,}
$$

and where the integrals are [definite integrals](https://en.wikipedia.org/wiki/Definite_integral "Definite integral") taken for x ranging over **X**, which represents the set of possible values of the random variable X.

In the case of a [parametric family of distributions](https://en.wikipedia.org/wiki/Parametric_model "Parametric model"), the standard deviation can often be expressed in terms of the parameters for the underlying distribution. For example, in the case of the [log-normal distribution](https://en.wikipedia.org/wiki/Log-normal_distribution "Log-normal distribution") with parameters μ and *σ* <sup>2</sup> for the underlying normal distribution, the standard deviation of the log-normal variable is given by the expression 
$$
{\displaystyle {\sqrt {\left(e^{\sigma ^{2}}-1\right)\ e^{2\mu +\sigma ^{2}}}}\,.}
$$

## Estimation

One can find the standard deviation of an entire population in cases (such as [standardized testing](https://en.wikipedia.org/wiki/Standardized_testing_\(statistics\) "Standardized testing (statistics)")) where every member of a population is sampled. In cases where that cannot be done, the standard deviation σ is estimated by examining a random sample taken from the population and computing a [statistic](https://en.wikipedia.org/wiki/Statistic "Statistic") of the sample, which is used as an estimate of the population standard deviation. Such a statistic is called an [estimator](https://en.wikipedia.org/wiki/Estimator "Estimator"), and the estimator (or the value of the estimator, namely the estimate) is called a **sample standard deviation**, and is denoted by s (possibly with modifiers).

Unlike in the case of estimating the population mean of a normal distribution, for which the [sample mean](https://en.wikipedia.org/wiki/Sample_mean "Sample mean") is a simple estimator with many desirable properties ([unbiased](https://en.wikipedia.org/wiki/Unbiased_estimator "Unbiased estimator"), [efficient](https://en.wikipedia.org/wiki/Efficient_estimator "Efficient estimator"), maximum likelihood), there is no single estimator for the standard deviation with all these properties, and [unbiased estimation of standard deviation](https://en.wikipedia.org/wiki/Unbiased_estimation_of_standard_deviation "Unbiased estimation of standard deviation") is a very technically involved problem. Most often, the standard deviation is estimated using the *[corrected sample standard deviation](#Corrected_sample_standard_deviation)* (using *N* − 1), defined below, and this is often referred to as the "sample standard deviation", without qualifiers. However, other estimators are better in other respects: the uncorrected estimator (using N) yields lower mean squared error, while using *N* − 1.5 (for the normal distribution) almost eliminates bias.

### Uncorrected sample standard deviation

The formula for the *population* standard deviation (of a finite population) can be applied to the sample, using the size of the sample as the size of the population (though the actual population size from which the sample is drawn may be much larger). This estimator, denoted by *s* <sub><i>N</i></sub>, is known as the *uncorrected sample standard deviation*, or sometimes the *standard deviation of the sample* (considered as the entire population), and is defined as follows:[^5] 
$$
{\displaystyle s_{N}={\sqrt {{\frac {1}{N}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}},}
$$

where ${\displaystyle \{x_{1},\,x_{2},\,\ldots ,\,x_{N}\}}$ are the observed values of the sample items, and ${\displaystyle {\bar {x}}}$ is the mean value of these observations, while the denominator N stands for the size of the sample: this is the square root of the sample variance, which is the average of the [squared deviations](https://en.wikipedia.org/wiki/Squared_deviations "Squared deviations") about the sample mean.

This is a [consistent estimator](https://en.wikipedia.org/wiki/Consistent_estimator "Consistent estimator") (it converges in probability to the population value as the number of samples goes to infinity), and is the [maximum-likelihood estimate](https://en.wikipedia.org/wiki/Maximum_likelihood "Maximum likelihood") when the population is normally distributed.[^6] However, this is a [biased estimator](https://en.wikipedia.org/wiki/Biased_estimator "Biased estimator"), as the estimates are generally too low. The bias decreases as sample size grows, dropping off as 1/ *N*, and thus is most significant for small or moderate sample sizes; for ${\displaystyle N>75}$ the bias is below 1%. Thus for very large sample sizes, the uncorrected sample standard deviation is generally acceptable. This estimator also has a uniformly smaller [mean squared error](https://en.wikipedia.org/wiki/Mean_squared_error "Mean squared error") than the corrected sample standard deviation.

### Corrected sample standard deviation

If the *biased [sample variance](https://en.wikipedia.org/wiki/Sample_variance "Sample variance")* (the second [central moment](https://en.wikipedia.org/wiki/Central_moment "Central moment") of the sample, which is a downward-biased estimate of the population variance) is used to compute an estimate of the population's standard deviation, the result is 
$$
{\displaystyle s_{N}={\sqrt {{\frac {1}{N}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}}.}
$$

Here taking the square root introduces further downward bias, by [Jensen's inequality](https://en.wikipedia.org/wiki/Jensen%27s_inequality "Jensen's inequality"), due to the square root's being a [concave function](https://en.wikipedia.org/wiki/Concave_function "Concave function"). The bias in the variance is easily corrected, but the bias from the square root is more difficult to correct, and depends on the distribution in question.

An unbiased estimator for the *variance* is given by applying [Bessel's correction](https://en.wikipedia.org/wiki/Bessel%27s_correction "Bessel's correction"), using *N* − 1 instead of N to yield the *unbiased sample variance,* denoted *s* <sup>2</sup>: 
$$
{\displaystyle s^{2}={\frac {1}{N-1}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}.}
$$

This estimator is unbiased if the variance exists and the sample values are drawn independently with replacement. *N* − 1 corresponds to the number of [degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_\(statistics\) "Degrees of freedom (statistics)") in the vector of deviations from the mean, ${\displaystyle \textstyle (x_{1}-{\bar {x}},\;\dots ,\;x_{n}-{\bar {x}}).}$

Taking square roots reintroduces bias (because the square root is a nonlinear function which does not [commute](https://en.wikipedia.org/wiki/Commutative_property "Commutative property") with the expectation, i.e. often ${\textstyle E[{\sqrt {X}}]\neq {\sqrt {E[X]}}}$), yielding the *corrected sample standard deviation,* denoted by s: 
$$
{\displaystyle s={\sqrt {{\frac {1}{N-1}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}}.}
$$

As explained above, while *s* <sup>2</sup> is an unbiased estimator for the population variance, s is still a biased estimator for the population standard deviation, though markedly less biased than the uncorrected sample standard deviation. This estimator is commonly used and generally known simply as the "sample standard deviation". The bias may still be large for small samples (N less than 10). As sample size increases, the amount of bias decreases. We obtain more information and the difference between ${\displaystyle {\frac {1}{N}}}$ and ${\displaystyle {\frac {1}{N-1}}}$ becomes smaller.

### Unbiased sample standard deviation

For [unbiased estimation of standard deviation](https://en.wikipedia.org/wiki/Unbiased_estimation_of_standard_deviation "Unbiased estimation of standard deviation"), there is no formula that works across all distributions, unlike for mean and variance. Instead, s is used as a basis, and is scaled by a correction factor to produce an unbiased estimate. For the normal distribution, an unbiased estimator is given by ⁠ *s* *c* <sub>4</sub> ⁠, where the correction factor (which depends on N) is given in terms of the [gamma function](https://en.wikipedia.org/wiki/Gamma_function "Gamma function"), and equals: 
$$
{\displaystyle c_{4}(N)\,=\,{\sqrt {\frac {2}{N-1}}}\,\,\,{\frac {\Gamma {\left({\frac {N}{2}}\right)}}{\Gamma {\left({\frac {N-1}{2}}\right)}}}.}
$$

This arises because the sampling distribution of the sample standard deviation follows a (scaled) [chi distribution](https://en.wikipedia.org/wiki/Chi_distribution "Chi distribution"), and the correction factor is the mean of the chi distribution.

An approximation can be given by replacing *N* − 1 with *N* − 1.5, yielding: 
$$
{\displaystyle {\hat {\sigma }}={\sqrt {{\frac {1}{N-1.5}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}},}
$$

The error in this approximation decays quadratically (as ⁠1 *N* <sup>2</sup> ⁠), and it is suited for all but the smallest samples or highest precision: for *N* = 3 the bias is equal to 1.3%, and for *N* = 9 the bias is already less than 0.1%.

A more accurate approximation is to replace *N* − 1.5 above with *N* − 1.5 + ⁠18(*N* − 1)⁠.[^7]

For other distributions, the correct formula depends on the distribution, but a rule of thumb is to use the further refinement of the approximation: 
$$
{\displaystyle {\hat {\sigma }}={\sqrt {{\frac {1}{N-1.5-{\frac {1}{4}}\gamma _{2}}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}},}
$$

where *γ* <sub>2</sub> denotes the population [excess kurtosis](https://en.wikipedia.org/wiki/Excess_kurtosis "Excess kurtosis"). The excess kurtosis may be either known beforehand for certain distributions, or estimated from the data.[^8]

### Confidence interval of a sampled standard deviation

The standard deviation we obtain by sampling a distribution is itself not absolutely accurate, both for mathematical reasons (explained here by the confidence interval) and for practical reasons of measurement (measurement error). The mathematical effect can be described by the [confidence interval](https://en.wikipedia.org/wiki/Confidence_interval "Confidence interval") or CI.

To show how a larger sample will make the confidence interval narrower, consider the following examples: A small population of *N* = 2 has only one degree of freedom for estimating the standard deviation. The result is that a 95% CI of the SD runs from 0.45 × SD to 31.9 × SD; [the factors here are as follows](https://en.wikipedia.org/wiki/Confidence_interval#Statistical_theory "Confidence interval"):

$$
{\displaystyle \Pr \left(q_{\frac {\alpha }{2}}<k{\frac {s^{2}}{\sigma ^{2}}}<q_{1-{\frac {\alpha }{2}}}\right)=1-\alpha ,}
$$

where ${\displaystyle q_{p}}$ is the p-th quantile of the chi-square distribution with k degrees of freedom, and 1 − *α* is the confidence level. This is equivalent to the following:

$$
{\displaystyle \Pr \left(k{\frac {s^{2}}{q_{1-{\frac {\alpha }{2}}}}}<\sigma ^{2}<k{\frac {s^{2}}{q_{\frac {\alpha }{2}}}}\right)=1-\alpha .}
$$

With *k* = 1, *q* <sub>0.025</sub> = 0.000982 and *q* <sub>0.975</sub> = 5.024. The reciprocals of the square roots of these two numbers give us the factors 0.45 and 31.9 given above.

A larger population of *N* = 10 has 9 degrees of freedom for estimating the standard deviation. The same computations as above give us in this case a 95% CI running from 0.69 × SD to 1.83 × SD. So even with a sample population of 10, the actual SD can still be almost a factor 2 higher than the sampled SD. For a sample population *N* = 100, this is down to 0.88 × SD to 1.16 × SD. To be more certain that the sampled SD is close to the actual SD we need to sample a large number of points.

These same formulae can be used to obtain confidence intervals on the variance of residuals from a [least squares](https://en.wikipedia.org/wiki/Least_squares "Least squares") fit under standard normal theory, where k is now the number of [degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_\(statistics\) "Degrees of freedom (statistics)") for error.

### Bounds on standard deviation

For a set of *N* > 4 data spanning a range of values R, an upper bound on the standard deviation s is given by *s* = 0.6 *R*.[^9] An estimate of the standard deviation for *N* > 100 data taken to be approximately normal follows from the heuristic that 95% of the area under the normal curve lies roughly two standard deviations to either side of the mean, so that, with 95% probability the total range of values R represents four standard deviations so that *s* ≈ *R* /4. This so-called range rule is useful in [sample size](https://en.wikipedia.org/wiki/Sample_size "Sample size") estimation, as the range of possible values is easier to estimate than the standard deviation. Other divisors *K* (*N*) of the range such that *s* ≈ *R* / *K* (*N*) are available for other values of N and for non-normal distributions.[^10]

## Identities and mathematical properties

The standard deviation is invariant under changes in [location](https://en.wikipedia.org/wiki/Location_parameter "Location parameter"), and scales directly with the [scale](https://en.wikipedia.org/wiki/Scale_parameter "Scale parameter") of the random variable. Thus, for a constant c and random variables X and Y: 
$$
{\displaystyle {\begin{aligned}\sigma (c)&=0\\\sigma (X+c)&=\sigma (X),\\\sigma (cX)&=|c|\sigma (X).\end{aligned}}}
$$

The standard deviation of the sum of two random variables can be related to their individual standard deviations and the [covariance](https://en.wikipedia.org/wiki/Covariance "Covariance") between them:

$$
{\displaystyle \sigma (X+Y)={\sqrt {\operatorname {var} (X)+\operatorname {var} (Y)+2\,\operatorname {cov} (X,Y)}}.\,}
$$

where ${\displaystyle \textstyle \operatorname {var} \,=\,\sigma ^{2}}$ and ${\displaystyle \textstyle \operatorname {cov} }$ stand for variance and [covariance](https://en.wikipedia.org/wiki/Covariance "Covariance"), respectively.

The calculation of the sum of squared deviations can be related to [moments](https://en.wikipedia.org/wiki/Moment_\(mathematics\) "Moment (mathematics)") calculated directly from the data. In the following formula, the letter E is interpreted to mean expected value, i.e., mean.

$$
{\displaystyle \sigma (X)={\sqrt {\operatorname {E} \left[\left(X-\operatorname {E} [X]\right)^{2}\right]}}={\sqrt {\operatorname {E} \left[X^{2}\right]-\left(\operatorname {E} [X]\right)^{2}}}.}
$$

The sample standard deviation can be computed as: 
$$
{\displaystyle s(X)={\sqrt {\frac {N}{N-1}}}{\sqrt {\operatorname {E} \left[\left(X-\operatorname {E} [X]\right)^{2}\right]}}.}
$$

For a finite population with equal probabilities at all points, we have

$$
{\displaystyle {\begin{aligned}{\sqrt {{\frac {1}{N}}\sum _{i=1}^{N}\left(x_{i}-{\bar {x}}\right)^{2}}}&={\sqrt {{\frac {1}{N}}\left(\sum _{i=1}^{N}x_{i}^{2}\right)-{\bar {x}}^{2}}}\\[1ex]&={\sqrt {\left({\frac {1}{N}}\sum _{i=1}^{N}x_{i}^{2}\right)-\left({\frac {1}{N}}\sum _{i=1}^{N}x_{i}\right)^{2}}},\end{aligned}}}
$$

which means that the standard deviation is equal to the square root of the difference between the average of the squares of the values and the square of the average value.

See computational formula for the variance for proof, and for an analogous result for the sample standard deviation.

## Interpretation and application

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Comparison_standard_deviations.svg/500px-Comparison_standard_deviations.svg.png)

Example of samples from two populations with the same mean but different standard deviations. Red population has mean 100 and SD 10; blue population has mean 100 and SD 50.

A large standard deviation indicates that the data points can spread far from the mean and a small standard deviation indicates that they are clustered closely around the mean.

For example, each of the three populations {0, 0, 14, 14}, {0, 6, 8, 14} and {6, 6, 8, 8} has a mean of 7. Their standard deviations are 7, 5, and 1, respectively. The third population has a much smaller standard deviation than the other two because its values are all close to 7. These standard deviations have the same units as the data points themselves. If, for instance, the data set {0, 6, 8, 14} represents the ages of a population of four siblings in years, the standard deviation is 5 years. As another example, the population {1000, 1006, 1008, 1014} may represent the distances traveled by four athletes, measured in meters. It has a mean of 1007 meters, and a standard deviation of 5 meters.

Standard deviation may serve as a measure of uncertainty. In physical science, for example, the reported standard deviation of a group of repeated [measurements](https://en.wikipedia.org/wiki/Measurement "Measurement") gives the [precision](https://en.wikipedia.org/wiki/Accuracy_and_precision "Accuracy and precision") of those measurements. When deciding whether measurements agree with a theoretical prediction, the standard deviation of those measurements is of crucial importance: if the mean of the measurements is too far away from the prediction (with the distance measured in standard deviations), then the theory being tested probably needs to be revised. This makes sense since they fall outside the range of values that could reasonably be expected to occur if the prediction were correct and the standard deviation appropriately quantified. See [prediction interval](https://en.wikipedia.org/wiki/Prediction_interval "Prediction interval").

While the standard deviation does measure how far typical values tend to be from the mean, other measures are available. An example is the [mean absolute deviation](https://en.wikipedia.org/wiki/Mean_absolute_deviation "Mean absolute deviation"), which might be considered a more direct measure of average distance, compared to the [root mean square distance](https://en.wikipedia.org/wiki/Root-mean-square_deviation "Root-mean-square deviation") inherent in the standard deviation.

### Application examples

The practical value of understanding the standard deviation of a set of values is in appreciating how much variation there is from the average (mean).

#### Experiment, industrial and hypothesis testing

Standard deviation is often used to compare real-world data against a model to test the model. For example, in industrial applications the weight of products coming off a production line may need to comply with a legally required value. By weighing some fraction of the products an average weight can be found, which will always be slightly different from the long-term average. By using standard deviations, a minimum and maximum value can be calculated that the averaged weight will be within some very high percentage of the time (99.9% or more). If it falls outside the range then the production process may or not need to be corrected. Statistical tests such as these are particularly important when the testing is relatively expensive. For example, if the product needs to be opened and drained and weighed, or if the product was otherwise used up by the test.

In experimental science, a theoretical model of reality is used. [Particle physics](https://en.wikipedia.org/wiki/Particle_physics "Particle physics") conventionally uses a standard of " **5 sigma** " for the declaration of a discovery. A five-sigma level translates to one chance in 3.5 million that a random fluctuation would yield the result. For example, this level of certainty was required by each of two independent particle physics experiments at [CERN](https://en.wikipedia.org/wiki/CERN "CERN") in order to announce that the [Higgs boson](https://en.wikipedia.org/wiki/Higgs_boson "Higgs boson") had been discovered,[^11] or by the [LIGO Scientific Collaboration](https://en.wikipedia.org/wiki/LIGO_Scientific_Collaboration "LIGO Scientific Collaboration") to [conclusively confirm](https://en.wikipedia.org/wiki/First_observation_of_gravitational_waves "First observation of gravitational waves") the existence of [gravitational waves](https://en.wikipedia.org/wiki/Gravitational_wave "Gravitational wave").[^12]

#### Weather

As a simple example, consider the average daily maximum temperatures for two cities, one inland and one on the coast. It is helpful to understand that the range of daily maximum temperatures for cities near the coast is smaller than for cities inland. Thus, while these two cities may each have the same average maximum temperature, the standard deviation of the daily maximum temperature for the coastal city will be less than that of the inland city as, on any particular day, the actual maximum temperature is more likely to be farther from the average maximum temperature for the inland city than for the coastal one.

#### Finance

In finance, standard deviation is often used as a measure of the [risk](https://en.wikipedia.org/wiki/Risk#Finance "Risk") associated with price-fluctuations of a given asset (stocks, bonds, property, etc.), or the risk of a portfolio of assets [^13] (actively managed mutual funds, index mutual funds, or ETFs). Risk is an important factor in determining how to efficiently manage a portfolio of investments because it determines the variation in returns on the asset or portfolio and gives investors a mathematical basis for investment decisions (known as [mean-variance optimization](https://en.wikipedia.org/wiki/Modern_portfolio_theory "Modern portfolio theory")). The fundamental concept of risk is that as it increases, the expected return on an investment should increase as well, an increase known as the risk premium. In other words, investors should expect a higher return on an investment when that investment carries a higher level of risk or uncertainty. When evaluating investments, investors should estimate both the expected return and the uncertainty of future returns. Standard deviation provides a quantified estimate of the uncertainty of future returns.

For example, assume an investor had to choose between two stocks. Stock A over the past 20 years had an average return of 10 percent, with a standard deviation of 20 [percentage points](https://en.wikipedia.org/wiki/Percentage_point "Percentage point") (pp) and Stock B, over the same period, had average returns of 12 percent but a higher standard deviation of 30 pp. On the basis of risk and return, an investor may decide that Stock A is the safer choice, because Stock B's additional two percentage points of return is not worth the additional 10 pp standard deviation (greater risk or uncertainty of the expected return). Stock B is likely to fall short of the initial investment (but also to exceed the initial investment) more often than Stock A under the same circumstances, and is estimated to return only two percent more on average. In this example, Stock A is expected to earn about 10 percent, plus or minus 20 pp (a range of 30 percent to −10 percent), about two-thirds of the future year returns. When considering more extreme possible returns or outcomes in future, an investor should expect results of as much as 10 percent plus or minus 60 pp, or a range from 70 percent to −50 percent, which includes outcomes for three standard deviations from the average return (about 99.7 percent of probable returns).

Calculating the average (or arithmetic mean) of the return of a security over a given period will generate the expected return of the asset. For each period, subtracting the expected return from the actual return results in the difference from the mean. Squaring the difference in each period and taking the average gives the overall variance of the return of the asset. The larger the variance, the greater risk the security carries. Finding the square root of this variance will give the standard deviation of the investment tool in question.

Financial time series are known to be non-stationary series, whereas the statistical calculations above, such as standard deviation, apply only to stationary series. To apply the above statistical tools to non-stationary series, the series first must be transformed to a stationary series, enabling use of statistical tools that now have a valid basis from which to work.

### Geometric interpretation

To gain some geometric insights and clarification, we will start with a population of three values, *x* <sub>1</sub>, *x* <sub>2</sub>, *x* <sub>3</sub>. This defines a point *P* = (*x* <sub>1</sub>, *x* <sub>2</sub>, *x* <sub>3</sub>) in **R** <sup>3</sup>. Consider the line *L* = {(*r*, *r*, *r*): *r* ∈ **R** }. This is the "main diagonal" going through the origin. If our three given values were all equal, then the standard deviation would be zero and P would lie on L. So it is not unreasonable to assume that the standard deviation is related to the *distance* of P to L. That is indeed the case. To move orthogonally from L to the point P, one begins at the point:

$$
{\displaystyle M=\left({\bar {x}},{\bar {x}},{\bar {x}}\right)}
$$

whose coordinates are the mean of the values we started out with.

| Derivation of ${\displaystyle M=\left({\bar {x}},{\bar {x}},{\bar {x}}\right)}$ |
| --- |
| ${\displaystyle M}$ is on ${\displaystyle L}$ therefore ${\displaystyle M=(\ell ,\ell ,\ell )}$ for some ${\displaystyle \ell \in \mathbb {R} }$.  The line L is to be orthogonal to the vector from M to P. Therefore:  $$ {\displaystyle {\begin{aligned}L\cdot (P-M)&=0\\[4pt](r,r,r)\cdot (x_{1}-\ell ,x_{2}-\ell ,x_{3}-\ell )&=0\\[4pt]r(x_{1}-\ell +x_{2}-\ell +x_{3}-\ell )&=0\\[4pt]r\left(\sum _{i}x_{i}-3\ell \right)&=0\\[4pt]\sum _{i}x_{i}-3\ell &=0\\[4pt]{\frac {1}{3}}\sum _{i}x_{i}&=\ell \\[4pt]{\bar {x}}&=\ell \end{aligned}}} $$ |

A little algebra shows that the distance between P and M (which is the same as the [orthogonal distance](https://en.wikipedia.org/wiki/Orthogonal_distance "Orthogonal distance") between P and the line L) ${\textstyle {\sqrt {\sum _{i}\left(x_{i}-{\bar {x}}\right)^{2}}}}$ is equal to the standard deviation of the vector (*x* <sub>1</sub>, *x* <sub>2</sub>, *x* <sub>3</sub>), multiplied by the square root of the number of dimensions of the vector (3 in this case).

### Chebyshev's inequality

An observation is rarely more than a few standard deviations away from the mean. Chebyshev's inequality ensures that, for all distributions for which the standard deviation is defined, the amount of data within a number of standard deviations of the mean is at least as much as given in the following table.

| Distance from mean | Minimum population |
| --- | --- |
| ${\displaystyle {\sqrt {2}}\,\sigma }$ | 50% |
| ${\displaystyle 2\sigma }$ | 75% |
| ${\displaystyle 3\sigma }$ | 89% |
| ${\displaystyle 4\sigma }$ | 94% |
| ${\displaystyle 5\sigma }$ | 96% |
| ${\displaystyle 6\sigma }$ | 97% |
| ${\displaystyle k\sigma }$ | ${\displaystyle 1-{\frac {1}{k^{2}}}}$ [^14] |
| ${\displaystyle {\frac {1}{\sqrt {1-\ell }}}\,\sigma }$ | ${\displaystyle \ell }$ |

### Rules for normally distributed data

![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Standard_deviation_diagram.svg/250px-Standard_deviation_diagram.svg.png)

Dark blue is one standard deviation on either side of the mean. For the normal distribution, this accounts for 68.27 percent of the set; while two standard deviations from the mean (medium and dark blue) account for 95.45 percent; three standard deviations (light, medium, and dark blue) account for 99.73 percent; and four standard deviations account for 99.994 percent. The two points of the curve that are one standard deviation from the mean are also the inflection points.

The [central limit theorem](https://en.wikipedia.org/wiki/Central_limit_theorem "Central limit theorem") states that the distribution of an average of many independent, identically distributed random variables tends toward the famous bell-shaped normal distribution with a [probability density function](https://en.wikipedia.org/wiki/Probability_density_function "Probability density function") of

$$
{\displaystyle f\left(x,\mu ,\sigma ^{2}\right)={\frac {1}{\sigma {\sqrt {2\pi }}}}e^{-{\frac {1}{2}}\left({\frac {x-\mu }{\sigma }}\right)^{2}},}
$$

where μ is the [expected value](https://en.wikipedia.org/wiki/Expected_value "Expected value") of the random variables, σ equals their distribution's standard deviation divided by *n* <sup>1⁄2</sup>, and n is the number of random variables. The standard deviation therefore is simply a scaling variable that adjusts how broad the curve will be, though it also appears in the [normalizing constant](https://en.wikipedia.org/wiki/Normalizing_constant "Normalizing constant").

If a data distribution is approximately normal, then the proportion of data values within z standard deviations of the mean is defined by:

$$
{\displaystyle {\text{Proportion}}=\operatorname {erf} \left({\frac {z}{\sqrt {2}}}\right)}
$$

where ${\displaystyle \textstyle \operatorname {erf} }$ is the [error function](https://en.wikipedia.org/wiki/Error_function "Error function"). The proportion that is less than or equal to a number, x, is given by the [cumulative distribution function](https://en.wikipedia.org/wiki/Cumulative_distribution_function "Cumulative distribution function"):[^15]

$$
{\displaystyle {\text{Proportion}}\leq x={\frac {1}{2}}\left[1+\operatorname {erf} \left({\frac {x-\mu }{\sigma {\sqrt {2}}}}\right)\right]={\frac {1}{2}}\left[1+\operatorname {erf} \left({\frac {z}{\sqrt {2}}}\right)\right].}
$$

If a data distribution is approximately normal then about 68 percent of the data values are within one standard deviation of the mean (mathematically, *μ* ± *σ*, where μ is the arithmetic mean), about 95 percent are within two standard deviations (*μ* ± 2 *σ*), and about 99.7 percent lie within three standard deviations (*μ* ± 3 *σ*). This is known as the *[68–95–99.7 rule](https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule "68–95–99.7 rule")*, or *the empirical rule*.

For various values of z, the percentage of values expected to lie in and outside the symmetric interval, CI = (− *z' **σ*****, *z'*** *σ*), are as follows:

![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Confidence_interval_by_Standard_deviation.svg/250px-Confidence_interval_by_Standard_deviation.svg.png)

Percentage within( z )

![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Standard_deviation_by_Confidence_interval.svg/250px-Standard_deviation_by_Confidence_interval.svg.png)

z (Percentage within)

<table><tbody><tr><th rowspan="2">Confidence<br>interval</th><th>Proportion within</th><th colspan="2">Proportion without</th></tr><tr><th>Percentage</th><th>Percentage</th><th>Fraction</th></tr><tr><td>0.318639σ</td><td>25%</td><td>75%</td><td>3 / 4</td></tr><tr><td>0.674490σ</td><td>50%</td><td>50%</td><td>1 / 2</td></tr><tr><td>0.977925σ</td><td>66.6667%</td><td>33.3333%</td><td>1 / 3</td></tr><tr><td>0.994458σ</td><td>68%</td><td>32%</td><td>1 / 3.125</td></tr><tr><td>1σ</td><td>68.2689492%</td><td>31.7310508%</td><td>1 / 3.1514872</td></tr><tr><td>1.281552σ</td><td>80%</td><td>20%</td><td>1 / 5</td></tr><tr><td>1.644854σ</td><td>90%</td><td>10%</td><td>1 / 10</td></tr><tr><td>1.959964σ</td><td>95%</td><td>5%</td><td>1 / 20</td></tr><tr><td>2σ</td><td>95.4499736%</td><td>4.5500264%</td><td>1 / 21.977895</td></tr><tr><td>2.575829σ</td><td>99%</td><td>1%</td><td>1 / 100</td></tr><tr><td>3σ</td><td>99.7300204%</td><td>0.2699796%</td><td>1 / 370.398</td></tr><tr><td>3.290527σ</td><td>99.9%</td><td>0.1%</td><td>1 / 1000</td></tr><tr><td>3.890592σ</td><td>99.99%</td><td>0.01%</td><td>1 / 10000</td></tr><tr><td>4σ</td><td>99.993666%</td><td>0.006334%</td><td>1 / 15787</td></tr><tr><td>4.417173σ</td><td>99.999%</td><td>0.001%</td><td>1 / 100000</td></tr><tr><td>4.5σ</td><td>99.9993204653751%</td><td>0.0006795346249%</td><td>1 / 147159.5358<br>6.8 / 1000000</td></tr><tr><td>4.891638σ</td><td>99.9999%</td><td>0.0001%</td><td>1 / 1000000</td></tr><tr><td>5σ</td><td>99.9999426697%</td><td>0.0000573303%</td><td>1 / 1744278</td></tr><tr><td>5.326724σ</td><td>99.99999%</td><td>0.00001%</td><td>1 / 10000000</td></tr><tr><td>5.730729σ</td><td>99.999999%</td><td>0.000001%</td><td>1 / 100000000</td></tr><tr><td><a href="https://en.wikipedia.org/wiki/Six_Sigma#Sigma_levels">6σ</a></td><td>99.9999998027%</td><td>0.0000001973%</td><td>1 / 506797346</td></tr><tr><td>6.109410σ</td><td>99.9999999%</td><td>0.0000001%</td><td>1 / 1000000000</td></tr><tr><td>6.466951σ</td><td>99.99999999%</td><td>0.00000001%</td><td>1 / 10000000000</td></tr><tr><td>6.806502σ</td><td>99.999999999%</td><td>0.000000001%</td><td>1 / 100000000000</td></tr><tr><td>7σ</td><td>99.9999999997440%</td><td>0.000000000256%</td><td>1 / 390682215445</td></tr></tbody></table>

## Standard deviation matrix

The standard deviation matrix ${\displaystyle \mathbf {S} }$ is the extension of the standard deviation to multiple dimensions. It is the [symmetric square root](https://en.wikipedia.org/wiki/Square_root_of_a_matrix "Square root of a matrix") of the covariance matrix ${\displaystyle \mathbf {\Sigma } }$.

${\displaystyle \mathbf {S} }$ linearly scales a random vector in multiple dimensions in the same way that ${\displaystyle \sigma }$ does in one dimension. A scalar random variable ${\displaystyle x}$ with variance ${\displaystyle \sigma ^{2}}$ can be written as ${\displaystyle x=\sigma z}$, where ${\displaystyle z}$ has unit variance. In the same way, a random vector ${\displaystyle {\boldsymbol {x}}}$ in several dimensions with covariance ${\displaystyle \mathbf {\Sigma } }$ can be written as ${\displaystyle {\boldsymbol {x}}=\mathbf {S} {\boldsymbol {z}}}$, where ${\displaystyle {\boldsymbol {z}}}$ is a normalized variable with identity covariance ${\displaystyle \mathbf {1} }$. This requires that ${\displaystyle \mathbf {S} \mathbf {S'} =\mathbf {\Sigma } }$. There are then infinite solutions for ${\displaystyle \mathbf {S} }$, and consequently there are multiple ways to whiten the distribution.[^16] The symmetric square root of ${\displaystyle \mathbf {\Sigma } }$ is one of the solutions.

For example, a multivariate normal vector ${\displaystyle {\boldsymbol {x}}\sim N({\boldsymbol {\mu }},\mathbf {\Sigma } )}$ can be defined as ${\displaystyle {\boldsymbol {x}}=\mathbf {S} {\boldsymbol {z}}+{\boldsymbol {\mu }}}$, where ${\displaystyle {\boldsymbol {z}}\sim N({\boldsymbol {0}},\mathbf {1} )}$ is the multivariate standard normal.

### Properties

- The eigenvectors and eigenvalues of ${\displaystyle \mathbf {S} }$ correspond to the axes of the 1 sd error ellipsoid of the multivariate normal distribution. See *[Multivariate normal distribution: geometric interpretation](https://en.wikipedia.org/wiki/Multivariate_normal_distribution#Geometric_interpretation "Multivariate normal distribution")*.![](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/MultivariateNormal.png/250px-MultivariateNormal.png)
	The standard deviation ellipse (green) of a two-dimensional normal distribution
- The standard deviation of the *projection* of the multivariate distribution (i.e. the marginal distribution) on to a line in the direction of the unit vector ${\displaystyle {\hat {\boldsymbol {\eta }}}}$ equals ${\displaystyle {\sqrt {{\hat {\boldsymbol {\eta }}}'\mathbf {\Sigma } {\hat {\boldsymbol {\eta }}}}}=\lVert \mathbf {S} {\hat {\boldsymbol {\eta }}}\rVert }$.
- The standard deviation of a *slice* of the multivariate distribution (i.e. the conditional distribution) along the line in the direction of the unit vector ${\displaystyle {\hat {\boldsymbol {\eta }}}}$ equals ${\displaystyle {\frac {1}{\lVert \mathbf {S} ^{-1}{\hat {\boldsymbol {\eta }}}\rVert }}}$.
- The [discriminability index](https://en.wikipedia.org/wiki/Sensitivity_index "Sensitivity index") between two equal-covariance distributions is their [Mahalanobis distance](https://en.wikipedia.org/wiki/Mahalanobis_distance "Mahalanobis distance"), which can also be expressed in terms of the sd matrix: ${\displaystyle d'={\sqrt {({\boldsymbol {\mu }}_{a}-{\boldsymbol {\mu }}_{b})'{\boldsymbol {\Sigma }}^{-1}({\boldsymbol {\mu }}_{a}-{\boldsymbol {\mu }}_{b})}}=\lVert \mathbf {S} ^{-1}{\boldsymbol {d}}\rVert }$, where ${\displaystyle {\boldsymbol {d}}={\boldsymbol {\mu }}_{a}-{\boldsymbol {\mu }}_{b}}$ is the mean-difference vector.
- Since ${\displaystyle \mathbf {S} }$ scales a normalized variable, it can be used to invert the transformation, and make it decorrelated and unit-variance: ${\displaystyle {\boldsymbol {z}}=\mathbf {S} ^{-1}({\boldsymbol {x}}-{\boldsymbol {\mu }})}$ has zero mean and identity covariance. This is called the [Mahalanobis whitening transform](https://en.wikipedia.org/wiki/Whitening_transformation "Whitening transformation").

## Relationship between standard deviation and mean

The mean and the standard deviation of a set of data are [descriptive statistics](https://en.wikipedia.org/wiki/Descriptive_statistics "Descriptive statistics") usually reported together. In a certain sense, the standard deviation is a "natural" measure of [statistical dispersion](https://en.wikipedia.org/wiki/Statistical_dispersion "Statistical dispersion") if the center of the data is measured about the mean. This is because the standard deviation from the mean is smaller than from any other point. The precise statement is the following: suppose *x* <sub>1</sub>,..., *x* <sub><i>n</i></sub> are real numbers and define the function:

$$
{\displaystyle \sigma (r)={\sqrt {{\frac {1}{N-1}}\sum _{i=1}^{N}\left(x_{i}-r\right)^{2}}}.}
$$

Using [calculus](https://en.wikipedia.org/wiki/Calculus "Calculus") or by [completing the square](https://en.wikipedia.org/wiki/Completing_the_square "Completing the square"), it is possible to show that *σ* (*r*) has a unique minimum at the mean:

$$
{\displaystyle r={\bar {x}}.\,}
$$

Variability can also be measured by the [coefficient of variation](https://en.wikipedia.org/wiki/Coefficient_of_variation "Coefficient of variation"), which is the ratio of the standard deviation to the mean. It is a [dimensionless number](https://en.wikipedia.org/wiki/Dimensionless_number "Dimensionless number").

### Standard deviation of the mean

Often, we want some information about the precision of the mean we obtained. We can obtain this by determining the standard deviation of the sampled mean. Assuming statistical independence of the values in the sample, the **standard deviation of the mean** (**SDOM**) is related to the standard deviation of the distribution by:

$$
{\displaystyle \sigma _{\text{mean}}={\frac {1}{\sqrt {N}}}\sigma ,}
$$

where N is the number of observations in the sample used to estimate the mean. This can easily be proven with (see [basic properties of the variance](https://en.wikipedia.org/wiki/Variance#Propagation "Variance")): 
$$
{\displaystyle {\begin{aligned}\operatorname {var} (X)&=\sigma _{X}^{2}\\\operatorname {var} (X_{1}+X_{2})&=\operatorname {var} (X_{1})+\operatorname {var} (X_{2})\\\end{aligned}}}
$$
 (Statistical independence is assumed.) 
$$
{\displaystyle \operatorname {var} (cX_{1})\equiv c^{2}\,\operatorname {var} (X_{1})}
$$

hence 
$$
{\displaystyle {\begin{aligned}\operatorname {var} ({\text{mean}})&=\operatorname {var} \left({\frac {1}{N}}\sum _{i=1}^{N}X_{i}\right)={\frac {1}{N^{2}}}\operatorname {var} \left(\sum _{i=1}^{N}X_{i}\right)\\&={\frac {1}{N^{2}}}\sum _{i=1}^{N}\operatorname {var} (X_{i})={\frac {N}{N^{2}}}\operatorname {var} (X)={\frac {1}{N}}\operatorname {var} (X).\end{aligned}}}
$$

Resulting in: 
$$
{\displaystyle \sigma _{\text{mean}}={\frac {\sigma }{\sqrt {N}}}.}
$$

In order to estimate the standard deviation of the mean *σ* <sub>mean</sub> it is necessary to know the standard deviation of the entire population σ beforehand. However, in most applications this parameter is unknown. For example, if a series of 10 measurements of a previously unknown quantity is performed in a laboratory, it is possible to calculate the resulting sample mean and sample standard deviation, but it is impossible to calculate the standard deviation of the mean. However, one can estimate the standard deviation of the entire population from the sample, and thus obtain an estimate for the standard error of the mean.

## Rapid calculation methods

The following two formulas can represent a running (repeatedly updated) standard deviation. A set of two power sums *s* <sub>1</sub> and *s* <sub>2</sub> are computed over a set of N values of x, denoted as *x* <sub>1</sub>,..., *x* <sub><i>N</i></sub>:

$$
{\displaystyle s_{j}=\sum _{k=1}^{N}{x_{k}^{j}}.}
$$

Given the results of these running summations, the values N, *s* <sub>1</sub>, *s* <sub>2</sub> can be used at any time to compute the *current* value of the running standard deviation:

$$
{\displaystyle \sigma ={\frac {\sqrt {Ns_{2}-(s_{1})^{2}}}{N}}.}
$$

Where N, as mentioned above, is the size of the set of values (or can also be regarded as *s* <sub>0</sub>).

Similarly for sample standard deviation,

$$
{\displaystyle s={\sqrt {\frac {Ns_{2}-(s_{1})^{2}}{N(N-1)}}}.}
$$

In a computer implementation, as the two *s* <sub><i>j</i></sub> sums become large, we need to consider [round-off error](https://en.wikipedia.org/wiki/Round-off_error "Round-off error"), [arithmetic overflow](https://en.wikipedia.org/wiki/Arithmetic_overflow "Arithmetic overflow"), and [arithmetic underflow](https://en.wikipedia.org/wiki/Arithmetic_underflow "Arithmetic underflow"). The method below calculates the running sums method with reduced rounding errors.[^17] This is a "one pass" algorithm for calculating variance of n samples without the need to store prior data during the calculation. Applying this method to a time series will result in successive values of standard deviation corresponding to n data points as n grows larger with each new sample, rather than a constant-width sliding window calculation.

For *k* = 1,..., *n*:

$$
{\displaystyle {\begin{aligned}A_{0}&=0\\A_{k}&=A_{k-1}+{\frac {x_{k}-A_{k-1}}{k}}\end{aligned}}}
$$

where A is the mean value. 
$$
{\displaystyle {\begin{aligned}Q_{0}&=0\\Q_{k}&=Q_{k-1}+{\frac {k-1}{k}}\left(x_{k}-A_{k-1}\right)^{2}\\&=Q_{k-1}+\left(x_{k}-A_{k-1}\right)\left(x_{k}-A_{k}\right)\end{aligned}}}
$$

Note: *Q* <sub>1</sub> = 0 since *k* − 1 = 0 or *x* <sub>1</sub> = *A* <sub>1</sub>.

Sample variance: 
$$
{\displaystyle s_{n}^{2}={\frac {Q_{n}}{n-1}}}
$$

Population variance: 
$$
{\displaystyle \sigma _{n}^{2}={\frac {Q_{n}}{n}}}
$$

### Weighted calculation

When the values ${\displaystyle x_{k}}$ are weighted with unequal weights ${\displaystyle w_{k}}$, the power sums *s* <sub>0</sub>, s <sub>1</sub>, *s* <sub>2</sub> are each computed as:

$$
{\displaystyle s_{j}=\sum _{k=1}^{N}w_{k}x_{k}^{j}.\,}
$$

And the standard deviation equations remain unchanged. *s* <sub>0</sub> is now the sum of the weights and not the number of samples N.

The incremental method with reduced rounding errors can also be applied, with some additional complexity.

A running sum of weights must be computed for each k from 1 to n: 
$$
{\displaystyle {\begin{aligned}W_{0}&=0\\W_{k}&=W_{k-1}+w_{k}\end{aligned}}}
$$

and places where 1/ *k* is used above must be replaced by ${\displaystyle w_{k}/W_{k}}$: 
$$
{\displaystyle {\begin{aligned}A_{0}&=0\\A_{k}&=A_{k-1}+{\frac {w_{k}}{W_{k}}}\left(x_{k}-A_{k-1}\right)\\Q_{0}&=0\\Q_{k}&=Q_{k-1}+{\frac {w_{k}W_{k-1}}{W_{k}}}\left(x_{k}-A_{k-1}\right)^{2}\\&=Q_{k-1}+w_{k}\left(x_{k}-A_{k-1}\right)\left(x_{k}-A_{k}\right)\end{aligned}}}
$$

In the final division, 
$$
{\displaystyle \sigma _{n}^{2}={\frac {Q_{n}}{W_{n}}}\,}
$$

and 
$$
{\displaystyle s_{n}^{2}={\frac {Q_{n}}{W_{n}-1}},}
$$

or 
$$
{\displaystyle s_{n}^{2}={\frac {n'}{n'-1}}\sigma _{n}^{2},}
$$

where n is the total number of elements, and n′ is the number of elements with non-zero weights.

The above formulas become equal to the simpler formulas given above if weights are taken as equal to one.

## History

The term *standard deviation* was first used in writing by [Karl Pearson](https://en.wikipedia.org/wiki/Karl_Pearson "Karl Pearson") in 1894, following his use of it in lectures.[^18] [^19] This was as a replacement for earlier alternative names for the same idea: for example, [Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss "Carl Friedrich Gauss") used *mean error*.[^20]

## Standard deviation index

The standard deviation index (SDI) is used in [external quality assessments](https://en.wikipedia.org/wiki/External_quality_assessment "External quality assessment"), particularly for [medical laboratories](https://en.wikipedia.org/wiki/Medical_laboratory "Medical laboratory"). It is calculated as:[^21] 
$$
{\displaystyle {\text{SDI}}={\frac {{\text{Laboratory mean}}-{\text{Consensus group mean}}}{\text{Consensus group standard deviation}}}.}
$$

## Alternatives

Standard deviation is [algebraically](https://en.wikipedia.org/wiki/Algebra "Algebra") simpler, though in practice less [robust](https://en.wikipedia.org/wiki/Robust_statistics "Robust statistics"), than the [average absolute deviation](https://en.wikipedia.org/wiki/Average_absolute_deviation "Average absolute deviation").[^22] [^23]

## See also

- [68–95–99.7 rule](https://en.wikipedia.org/wiki/68%E2%80%9395%E2%80%9399.7_rule "68–95–99.7 rule")
- [Accuracy and precision](https://en.wikipedia.org/wiki/Accuracy_and_precision "Accuracy and precision")
- [Algorithms for calculating variance](https://en.wikipedia.org/wiki/Algorithms_for_calculating_variance "Algorithms for calculating variance")
- [Chebyshev's inequality](https://en.wikipedia.org/wiki/Chebyshev%27s_inequality "Chebyshev's inequality") An inequality on location and scale parameters
- [Coefficient of variation](https://en.wikipedia.org/wiki/Coefficient_of_variation "Coefficient of variation")
- [Cumulant](https://en.wikipedia.org/wiki/Cumulant "Cumulant")
- [Deviation (statistics)](https://en.wikipedia.org/wiki/Deviation_\(statistics\) "Deviation (statistics)")
- [Distance correlation](https://en.wikipedia.org/wiki/Distance_correlation "Distance correlation") Distance standard deviation
- [Error bar](https://en.wikipedia.org/wiki/Error_bar "Error bar")
- [Geometric standard deviation](https://en.wikipedia.org/wiki/Geometric_standard_deviation "Geometric standard deviation")
- [Mahalanobis distance](https://en.wikipedia.org/wiki/Mahalanobis_distance "Mahalanobis distance") generalizing number of standard deviations to the mean
- [Mean absolute error](https://en.wikipedia.org/wiki/Mean_absolute_error "Mean absolute error")
- [Median absolute deviation](https://en.wikipedia.org/wiki/Median_absolute_deviation "Median absolute deviation")
- [Pooled variance](https://en.wikipedia.org/wiki/Pooled_variance "Pooled variance")
- [Propagation of uncertainty](https://en.wikipedia.org/wiki/Propagation_of_uncertainty "Propagation of uncertainty")
- [Percentile](https://en.wikipedia.org/wiki/Percentile "Percentile")
- [Raw data](https://en.wikipedia.org/wiki/Raw_data "Raw data")
- [Reduced chi-squared statistic](https://en.wikipedia.org/wiki/Reduced_chi-squared_statistic "Reduced chi-squared statistic")
- [Robust standard deviation](https://en.wikipedia.org/wiki/Robust_standard_deviation "Robust standard deviation")
- [Root mean square](https://en.wikipedia.org/wiki/Root_mean_square "Root mean square")
- [Sample size](https://en.wikipedia.org/wiki/Sample_size "Sample size")
- [Samuelson's inequality](https://en.wikipedia.org/wiki/Samuelson%27s_inequality "Samuelson's inequality")
- [Six Sigma](https://en.wikipedia.org/wiki/Six_Sigma "Six Sigma")
- [Standard error](https://en.wikipedia.org/wiki/Standard_error "Standard error")
- [Standard score](https://en.wikipedia.org/wiki/Standard_score "Standard score")
- [Statistical dispersion](https://en.wikipedia.org/wiki/Statistical_dispersion "Statistical dispersion")
- [Yamartino method](https://en.wikipedia.org/wiki/Yamartino_method "Yamartino method") for calculating standard deviation of wind direction

## References

[^1]: Bland, J.M.; Altman, D.G. (1996). ["Statistics notes: measurement error"](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2351401). *BMJ*. **312** (7047): 1654. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1136/bmj.312.7047.1654](https://doi.org/10.1136%2Fbmj.312.7047.1654). [PMC](https://en.wikipedia.org/wiki/PMC_\(identifier\) "PMC (identifier)") [2351401](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2351401). [PMID](https://en.wikipedia.org/wiki/PMID_\(identifier\) "PMID (identifier)") [8664723](https://pubmed.ncbi.nlm.nih.gov/8664723).

[^2]: [Weisstein, Eric W.](https://en.wikipedia.org/wiki/Eric_W._Weisstein "Eric W. Weisstein") ["Bessel's Correction"](https://mathworld.wolfram.com/BesselsCorrection.html). *[MathWorld](https://en.wikipedia.org/wiki/MathWorld "MathWorld")*.

[^3]: ["Standard Deviation Formulas"](https://www.mathsisfun.com/data/standard-deviation-formulas.html). *www.mathsisfun.com*. Retrieved 21 August 2020.

[^4]: [*Anthropometric Reference Data for Children and Adults: United States, 2015–2018*](https://www.cdc.gov/nchs/data/series/sr_03/sr03-046-508.pdf) (PDF), National Center for Health Statistics: Vital and Health Statistics, vol. 3, Centers for Disease Control and Prevention, January 2021, p. 16, Table 12

[^5]: Weisstein, Eric W. ["Standard Deviation"](https://mathworld.wolfram.com/StandardDeviation.html). *mathworld.wolfram.com*. Retrieved 21 August 2020.

[^6]: ["Consistent estimator"](https://www.statlect.com/glossary/consistent-estimator). *www.statlect.com*. Retrieved 10 October 2022.

[^7]: Gurland, John; Tripathi, Ram C. (1971), "A Simple Approximation for Unbiased Estimation of the Standard Deviation", *The American Statistician*, **25** (4): 30–32, [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/2682923](https://doi.org/10.2307%2F2682923), [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2682923](https://www.jstor.org/stable/2682923)

[^8]: ["Standard Deviation Calculator"](https://purecalculators.com/standard-deviation-calculator). *PureCalculators*. 11 July 2021. Retrieved 14 September 2021.

[^9]: Shiffler, Ronald E.; Harsha, Phillip D. (1980). "Upper and Lower Bounds for the Sample Standard Deviation". *Teaching Statistics*. **2** (3): 84–86. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1111/j.1467-9639.1980.tb00398.x](https://doi.org/10.1111%2Fj.1467-9639.1980.tb00398.x).

[^10]: Browne, Richard H. (2001). "Using the Sample Range as a Basis for Calculating Sample Size in Power Calculations". *The American Statistician*. **55** (4): 293–298. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1198/000313001753272420](https://doi.org/10.1198%2F000313001753272420). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2685690](https://www.jstor.org/stable/2685690). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [122328846](https://api.semanticscholar.org/CorpusID:122328846).

[^11]: ["CERN experiments observe particle consistent with long-sought Higgs boson | CERN press office"](https://web.archive.org/web/20160325050100/http://press-archive.web.cern.ch/press-archive/PressReleases/Releases2012/PR17.12E.html). Press.web.cern.ch. 4 July 2012. Archived from [the original](http://press-archive.web.cern.ch/press-archive/PressReleases/Releases2012/PR17.12E.html) on 25 March 2016. Retrieved 30 May 2015.

[^12]: LIGO Scientific Collaboration, Virgo Collaboration (2016), "Observation of Gravitational Waves from a Binary Black Hole Merger", *Physical Review Letters*, **116** (6) 061102, [arXiv](https://en.wikipedia.org/wiki/ArXiv_\(identifier\) "ArXiv (identifier)"):[1602.03837](https://arxiv.org/abs/1602.03837), [Bibcode](https://en.wikipedia.org/wiki/Bibcode_\(identifier\) "Bibcode (identifier)"):[2016PhRvL.116f1102A](https://ui.adsabs.harvard.edu/abs/2016PhRvL.116f1102A), [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1103/PhysRevLett.116.061102](https://doi.org/10.1103%2FPhysRevLett.116.061102), [PMID](https://en.wikipedia.org/wiki/PMID_\(identifier\) "PMID (identifier)") [26918975](https://pubmed.ncbi.nlm.nih.gov/26918975), [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [124959784](https://api.semanticscholar.org/CorpusID:124959784)

[^13]: ["What is Standard Deviation"](http://www.edupristine.com/blog/what-is-standard-deviation). Pristine. Retrieved 29 October 2011.

[^14]: Ghahramani, Saeed (2000). [*Fundamentals of Probability*](https://archive.org/details/fundamentalsprob00ghah_271) (2nd ed.). New Jersey: Prentice Hall. p. [438](https://archive.org/details/fundamentalsprob00ghah_271/page/n445). [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [9780130113290](https://en.wikipedia.org/wiki/Special:BookSources/9780130113290 "Special:BookSources/9780130113290").

[^15]: Eric W. Weisstein. ["Distribution Function"](https://mathworld.wolfram.com/DistributionFunction.html). *MathWorld*. Wolfram. Retrieved 30 September 2014.

[^16]: Kessy, A.; Lewin, A.; Strimmer, K. (2018). "Optimal whitening and decorrelation". *The American Statistician*. **72** (4): 309–314. [arXiv](https://en.wikipedia.org/wiki/ArXiv_\(identifier\) "ArXiv (identifier)"):[1512.00809](https://arxiv.org/abs/1512.00809). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1080/00031305.2016.1277159](https://doi.org/10.1080%2F00031305.2016.1277159). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [55075085](https://api.semanticscholar.org/CorpusID:55075085).

[^17]: Welford, B. P. (August 1962). "Note on a Method for Calculating Corrected Sums of Squares and Products". *Technometrics*. **4** (3): 419–420. [CiteSeerX](https://en.wikipedia.org/wiki/CiteSeerX_\(identifier\) "CiteSeerX (identifier)") [10.1.1.302.7503](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.302.7503). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1080/00401706.1962.10490022](https://doi.org/10.1080%2F00401706.1962.10490022).

[^18]: [Dodge, Yadolah](https://en.wikipedia.org/wiki/Yadolah_Dodge "Yadolah Dodge") (2003). [*The Oxford Dictionary of Statistical Terms*](https://archive.org/details/oxforddictionary0000unse). Oxford University Press. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-19-920613-1](https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-920613-1 "Special:BookSources/978-0-19-920613-1").

[^19]: [Pearson, Karl](https://en.wikipedia.org/wiki/Karl_Pearson "Karl Pearson") (1894). ["On the dissection of asymmetrical frequency curves"](https://doi.org/10.1098%2Frsta.1894.0003). *[Philosophical Transactions of the Royal Society A](https://en.wikipedia.org/wiki/Philosophical_Transactions_of_the_Royal_Society_A "Philosophical Transactions of the Royal Society A")*. **185**: 71–110. [Bibcode](https://en.wikipedia.org/wiki/Bibcode_\(identifier\) "Bibcode (identifier)"):[1894RSPTA.185...71P](https://ui.adsabs.harvard.edu/abs/1894RSPTA.185...71P). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1098/rsta.1894.0003](https://doi.org/10.1098%2Frsta.1894.0003).

[^20]: Miller, Jeff. ["Earliest Known Uses of Some of the Words of Mathematics"](https://mathshistory.st-andrews.ac.uk/Miller/mathword/).

[^21]: Harr, Robert R. (2012). *Medical laboratory science review*. Philadelphia: F. A. Davis Co. p. 236. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-8036-3796-2](https://en.wikipedia.org/wiki/Special:BookSources/978-0-8036-3796-2 "Special:BookSources/978-0-8036-3796-2"). [OCLC](https://en.wikipedia.org/wiki/OCLC_\(identifier\) "OCLC (identifier)") [818846942](https://search.worldcat.org/oclc/818846942).

[^22]: [Gauss, Carl Friedrich](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss "Carl Friedrich Gauss") (1816). "Bestimmung der Genauigkeit der Beobachtungen". *Zeitschrift für Astronomie und Verwandte Wissenschaften*. **1**: 187–197.

[^23]: [Walker, Helen](https://en.wikipedia.org/wiki/Helen_M._Walker "Helen M. Walker") (1931). *Studies in the History of the Statistical Method*. Baltimore, MD: Williams & Wilkins Co. pp. 24–25.