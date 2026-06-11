---
title: Regression analysis
source: https://en.wikipedia.org/wiki/Regression_analysis
author:
  - "[[Wikipedia]]"
published: 2004-07-15
created: 2026-05-28
description:
tags:
  - clippings
  - Quant
  - mathematics
---
![](https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Normdist_regression.png/250px-Normdist_regression.png)

Regression line for 50 random points in a Gaussian distribution around the line y=1.5x+2

In [statistical modeling](https://en.wikipedia.org/wiki/Statistical_model "Statistical model"), **regression analysis** is a statistical method for [estimating](https://en.wikipedia.org/wiki/Estimation_theory "Estimation theory") the relationship between a [dependent variable](https://en.wikipedia.org/wiki/Dependent_variable "Dependent variable") (often called the *outcome* or *response* variable, or a *label* in machine learning parlance) and one or more [independent variables](https://en.wikipedia.org/wiki/Independent_variable "Independent variable") (often called *regressors*, *predictors*, *covariates*, *explanatory variables* or *features*).[^1] [^2]

The most common form of regression analysis is [linear regression](https://en.wikipedia.org/wiki/Linear_regression "Linear regression"), in which one finds the line (or a more complex [linear combination](https://en.wikipedia.org/wiki/Linear_combination "Linear combination")) that most closely fits the data according to a specific mathematical criterion. For example, the method of [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares") computes the unique line (or [hyperplane](https://en.wikipedia.org/wiki/Hyperplane "Hyperplane")) that minimizes the sum of squared differences between the true data and that line (or hyperplane). For specific mathematical reasons (see [linear regression](https://en.wikipedia.org/wiki/Linear_regression "Linear regression")), this allows the researcher to estimate the [conditional expectation](https://en.wikipedia.org/wiki/Conditional_expectation "Conditional expectation") (or population [average value](https://en.wikipedia.org/wiki/Average_value "Average value")) of the dependent variable when the independent variables take on a given set of values. Less common forms of regression use slightly different procedures to estimate alternative [location parameters](https://en.wikipedia.org/wiki/Location_parameters "Location parameters") (e.g., [quantile regression](https://en.wikipedia.org/wiki/Quantile_regression "Quantile regression") or [Necessary Condition Analysis](https://en.wikipedia.org/wiki/Necessary_Condition_Analysis "Necessary Condition Analysis") [^3]) or estimate the conditional expectation across a broader collection of non-linear models (e.g., [nonparametric regression](https://en.wikipedia.org/wiki/Nonparametric_regression "Nonparametric regression")).

Regression analysis is primarily used for two conceptually distinct purposes. First, regression analysis is widely used for [prediction](https://en.wikipedia.org/wiki/Prediction "Prediction") and [forecasting](https://en.wikipedia.org/wiki/Forecasting "Forecasting"), where its use has substantial overlap with the field of [machine learning](https://en.wikipedia.org/wiki/Machine_learning "Machine learning"). Second, in some situations regression analysis can be used to infer [causal relationships](https://en.wikipedia.org/wiki/Causality "Causality") between the independent and dependent variables. Importantly, regressions by themselves only reveal relationships between a dependent variable and a collection of independent variables in a fixed dataset. To use regressions for prediction or to infer causal relationships, respectively, a researcher must carefully justify why existing relationships have predictive power for a new context or why a relationship between two variables has a causal interpretation. The latter is especially important when researchers hope to estimate causal relationships using [observational data](https://en.wikipedia.org/wiki/Observational_study "Observational study").[^4] [^5]

## History

The earliest regression form was seen in [Isaac Newton](https://en.wikipedia.org/wiki/Isaac_Newton "Isaac Newton") 's work in 1700 while studying [equinoxes](https://en.wikipedia.org/wiki/Equinox "Equinox"), being credited with introducing "an embryonic linear regression analysis" as "not only did he perform the averaging of a set of data, 50 years before [Tobias Mayer](https://en.wikipedia.org/wiki/Tobias_Mayer "Tobias Mayer"), but by summing the residuals to zero he *forced* the regression line to pass through the average point. He also distinguished between two inhomogeneous sets of data and might have thought of an *optimal* solution in terms of bias, though not in terms of effectiveness." [^6] He previously used an averaging method in his 1671 work on [Newton's rings](https://en.wikipedia.org/wiki/Newton%27s_rings "Newton's rings"), which was unprecedented at the time.[^7]

The [method of least squares](https://en.wikipedia.org/wiki/Method_of_least_squares "Method of least squares") was published by [Legendre](https://en.wikipedia.org/wiki/Adrien-Marie_Legendre "Adrien-Marie Legendre") in 1805,[^8] and by [Gauss](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss "Carl Friedrich Gauss") in 1809.[^9] Legendre and Gauss both applied the method to the problem of determining, from astronomical observations, the orbits of bodies about the Sun (mostly comets, but also later the then newly discovered minor planets). Gauss published a further development of the theory of least squares in 1821,[^10] including a version of the [Gauss–Markov theorem](https://en.wikipedia.org/wiki/Gauss%E2%80%93Markov_theorem "Gauss–Markov theorem").

The term "regression" was coined by [Francis Galton](https://en.wikipedia.org/wiki/Francis_Galton "Francis Galton") in the 19th century to describe a biological phenomenon. The phenomenon was that the heights of descendants of tall ancestors tend to regress down towards a normal average (a phenomenon also known as [regression toward the mean](https://en.wikipedia.org/wiki/Regression_toward_the_mean "Regression toward the mean")).[^11] [^12] For Galton, regression had only this biological meaning,[^13] [^14] but his work was later extended by [Udny Yule](https://en.wikipedia.org/wiki/Udny_Yule "Udny Yule") and [Karl Pearson](https://en.wikipedia.org/wiki/Karl_Pearson "Karl Pearson") to a more general statistical context.[^15] [^16] In the work of Yule and Pearson, the [joint distribution](https://en.wikipedia.org/wiki/Joint_distribution "Joint distribution") of the response and explanatory variables is assumed to be [Gaussian](https://en.wikipedia.org/wiki/Normal_distribution "Normal distribution"). This assumption was weakened by [R.A. Fisher](https://en.wikipedia.org/wiki/Ronald_A._Fisher "Ronald A. Fisher") in his works of 1922 and 1925.[^17] [^18] [^19] Fisher assumed that the [conditional distribution](https://en.wikipedia.org/wiki/Conditional_distribution "Conditional distribution") of the response variable is Gaussian, but the joint distribution need not be. In this respect, Fisher's assumption is closer to Gauss's formulation of 1821.

In the 1950s and 1960s, economists used [electromechanical desk calculators](https://en.wikipedia.org/wiki/Calculator#Precursors_to_the_electronic_calculator "Calculator") to calculate regressions. Before 1970, it sometimes took up to 24 hours to receive the result from one regression.[^20]

Regression methods continue to be an area of active research. In recent decades, new methods have been developed for [robust regression](https://en.wikipedia.org/wiki/Robust_regression "Robust regression"), regression involving correlated responses such as [time series](https://en.wikipedia.org/wiki/Time_series "Time series") and [growth curves](https://en.wikipedia.org/wiki/Growth_curve_\(statistics\) "Growth curve (statistics)"), regression in which the predictor (independent variable) or response variables are curves, images, graphs, or other complex data objects, regression methods accommodating various types of missing data, [nonparametric regression](https://en.wikipedia.org/wiki/Nonparametric_regression "Nonparametric regression"), [Bayesian](https://en.wikipedia.org/wiki/Bayesian_statistics "Bayesian statistics") methods for regression, regression in which the predictor variables are measured with error, regression with more predictor variables than observations, and [causal inference](https://en.wikipedia.org/wiki/Causal_inference "Causal inference") with regression. Modern regression analysis is typically done with statistical and [spreadsheet](https://en.wikipedia.org/wiki/Spreadsheet "Spreadsheet") software packages on computers as well as on handheld [scientific](https://en.wikipedia.org/wiki/Scientific_calculator "Scientific calculator") and [graphing calculators](https://en.wikipedia.org/wiki/Graphing_calculator "Graphing calculator").

## Regression model

In practice, researchers first select a model they would like to estimate and then use their chosen method (e.g., [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares")) to estimate the parameters of that model. Regression models involve the following components:

- The **unknown parameters**, often denoted as a [scalar](https://en.wikipedia.org/wiki/Scalar_\(physics\) "Scalar (physics)") or [vector](https://en.wikipedia.org/wiki/Euclidean_vector "Euclidean vector") ${\displaystyle \beta }$.
- The **independent variables**, which are observed in data and are often denoted as a vector ${\displaystyle X_{i}}$ (where ${\displaystyle i}$ denotes a row of data).
- The **dependent variable**, which are observed in data and often denoted using the scalar ${\displaystyle Y_{i}}$.
- The **error terms**, which are *not* directly observed in data and are often denoted using the scalar ${\displaystyle e_{i}}$.

In various [fields of application](https://en.wikipedia.org/wiki/List_of_fields_of_application_of_statistics "List of fields of application of statistics"), different terminologies are used in place of [dependent and independent variables](https://en.wikipedia.org/wiki/Dependent_and_independent_variables "Dependent and independent variables").

Most regression models propose that ${\displaystyle Y_{i}}$ is a [function](https://en.wikipedia.org/wiki/Function_\(mathematics\) "Function (mathematics)") (**regression function**) of ${\displaystyle X_{i}}$ and ${\displaystyle \beta }$, with ${\displaystyle e_{i}}$ representing an [additive error term](https://en.wikipedia.org/wiki/Errors_and_residuals "Errors and residuals") that may stand in for un-modeled determinants of ${\displaystyle Y_{i}}$ or random statistical noise:

${\displaystyle Y_{i}=f(X_{i},\beta )+e_{i}}$

In the standard regression model, the independent variables ${\displaystyle X_{i}}$ are assumed to be free of error. The [errors-in-variables model](https://en.wikipedia.org/wiki/Errors-in-variables_model "Errors-in-variables model") can be used if the independent variables are assumed to contain errors. Other modifications to the standard regression model can be made to account for various scenarios, such as situations involving [omitted variables](https://en.wikipedia.org/wiki/Omitted_variable_bias "Omitted variable bias"), [confounding variables](https://en.wikipedia.org/wiki/Confounder "Confounder") or [endogeneity](https://en.wikipedia.org/wiki/Endogeneity_\(econometrics\) "Endogeneity (econometrics)").

The researchers' goal is to estimate the function ${\displaystyle f(X_{i},\beta )}$ that most closely fits the data. To carry out regression analysis, the form of the function ${\displaystyle f}$ must be specified. Sometimes the form of this function is based on knowledge about the relationship between ${\displaystyle Y_{i}}$ and ${\displaystyle X_{i}}$ that does not rely on the data. If no such knowledge is available, a flexible or convenient form for ${\displaystyle f}$ is chosen. For example, a simple univariate regression may propose ${\displaystyle f(X_{i},\beta )=\beta _{0}+\beta _{1}X_{i}}$, suggesting that the researcher believes ${\displaystyle Y_{i}=\beta _{0}+\beta _{1}X_{i}+e_{i}}$ to be a reasonable approximation for the statistical process generating the data.

Once researchers determine their preferred [statistical model](https://en.wikipedia.org/wiki/Statistical_model "Statistical model"), different forms of regression analysis provide tools to estimate the parameters ${\displaystyle \beta }$. For example, [least squares](https://en.wikipedia.org/wiki/Least_squares "Least squares") (including its most common variant, [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares")) finds the value of ${\displaystyle \beta }$ that minimizes the sum of squared errors ${\displaystyle \sum _{i}(Y_{i}-f(X_{i},\beta ))^{2}}$. A given regression method will ultimately provide an estimate of ${\displaystyle \beta }$, usually denoted ${\displaystyle {\hat {\beta }}}$ to distinguish the estimate from the true (unknown) parameter value that generated the data. Using this estimate, the researcher can then use the *fitted value* ${\displaystyle {\hat {Y_{i}}}=f(X_{i},{\hat {\beta }})}$ for prediction or to assess the accuracy of the model in explaining the data. Whether the researcher is intrinsically interested in the estimate ${\displaystyle {\hat {\beta }}}$ or the predicted value ${\displaystyle {\hat {Y_{i}}}}$ will depend on context and their goals. As described in [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares"), least squares is widely used because the estimated function ${\displaystyle f(X_{i},{\hat {\beta }})}$ approximates the [conditional expectation](https://en.wikipedia.org/wiki/Conditional_expectation "Conditional expectation") ${\displaystyle E(Y_{i}|X_{i})}$.[^9] However, alternative variants (e.g., [least absolute deviations](https://en.wikipedia.org/wiki/Least_absolute_deviations "Least absolute deviations") or [quantile regression](https://en.wikipedia.org/wiki/Quantile_regression "Quantile regression")) are useful when researchers want to model other functions ${\displaystyle f(X_{i},\beta )}$.

There must be sufficient data to estimate a regression model. For example, suppose that a researcher has access to ${\displaystyle N}$ rows of data with one dependent and two independent variables: ${\displaystyle (Y_{i},X_{1i},X_{2i})}$. Suppose further that the researcher wants to estimate a bivariate linear model via [least squares](https://en.wikipedia.org/wiki/Least_squares "Least squares"): ${\displaystyle Y_{i}=\beta _{0}+\beta _{1}X_{1i}+\beta _{2}X_{2i}+e_{i}}$. If the researcher only has access to ${\displaystyle N=2}$ data points, then they could find infinitely many combinations ${\displaystyle ({\hat {\beta }}_{0},{\hat {\beta }}_{1},{\hat {\beta }}_{2})}$ that explain the data equally well: any combination can be chosen that satisfies ${\displaystyle {\hat {Y}}_{i}={\hat {\beta }}_{0}+{\hat {\beta }}_{1}X_{1i}+{\hat {\beta }}_{2}X_{2i}}$, all of which lead to ${\displaystyle \sum _{i}{\hat {e}}_{i}^{2}=\sum _{i}({\hat {Y}}_{i}-({\hat {\beta }}_{0}+{\hat {\beta }}_{1}X_{1i}+{\hat {\beta }}_{2}X_{2i}))^{2}=0}$ and are therefore valid solutions that minimize the sum of squared [residuals](https://en.wikipedia.org/wiki/Errors_and_residuals "Errors and residuals"). To understand why there are infinitely many options, note that the system of ${\displaystyle N=2}$ equations is to be solved for 3 unknowns, which makes the system [underdetermined](https://en.wikipedia.org/wiki/Underdetermined_system "Underdetermined system"). Alternatively, one can visualize infinitely many 3-dimensional planes that go through ${\displaystyle N=2}$ fixed points.

More generally, to estimate a [least squares](https://en.wikipedia.org/wiki/Least_squares "Least squares") model with ${\displaystyle k}$ distinct parameters, one must have ${\displaystyle N\geq k}$ distinct data points. If ${\displaystyle N>k}$, then there does not generally exist a set of parameters that will perfectly fit the data. The quantity ${\displaystyle N-k}$ appears often in regression analysis, and is referred to as the [degrees of freedom](https://en.wikipedia.org/wiki/Degrees_of_freedom_\(statistics\) "Degrees of freedom (statistics)") in the model. Moreover, to estimate a least squares model, the independent variables ${\displaystyle (X_{1i},X_{2i},...,X_{ki})}$ must be [linearly independent](https://en.wikipedia.org/wiki/Linear_independence "Linear independence"): one must *not* be able to reconstruct any of the independent variables by adding and multiplying the remaining independent variables. As discussed in [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares"), this condition ensures that ${\displaystyle X^{T}X}$ is an [invertible matrix](https://en.wikipedia.org/wiki/Invertible_matrix "Invertible matrix") and therefore that a unique solution ${\displaystyle {\hat {\beta }}}$ exists.

## Underlying assumptions

By itself, a regression is just a computation performed on a set of data. In order to interpret the resultant regression as a meaningful statistical model that quantifies real-world relationships, researchers often rely on a number of classical [assumptions](https://en.wikipedia.org/wiki/Statistical_assumption "Statistical assumption"). These assumptions often include:

- The sample is representative of the population at large.
- The independent variables are measured without error.
- Deviations from the model have an expected value of zero, conditional on covariates: ${\displaystyle E(e_{i}|X_{i})=0}$
- The variance of the residuals ${\displaystyle e_{i}}$ is constant across observations ([homoscedasticity](https://en.wikipedia.org/wiki/Homoscedasticity "Homoscedasticity")).
- The residuals ${\displaystyle e_{i}}$ are [uncorrelated](https://en.wikipedia.org/wiki/Uncorrelated "Uncorrelated") with one another. Mathematically, the [variance–covariance matrix](https://en.wikipedia.org/wiki/Covariance_matrix "Covariance matrix") of the errors is [diagonal](https://en.wikipedia.org/wiki/Diagonal_matrix "Diagonal matrix").

A handful of conditions are sufficient for the least-squares estimator to possess desirable properties: in particular, the [Gauss–Markov](https://en.wikipedia.org/wiki/Gauss%E2%80%93Markov_theorem "Gauss–Markov theorem") assumptions imply that the parameter estimates will be [unbiased](https://en.wikipedia.org/wiki/Bias_of_an_estimator "Bias of an estimator"), [consistent](https://en.wikipedia.org/wiki/Consistent_estimator "Consistent estimator"), and [efficient](https://en.wikipedia.org/wiki/Efficient_\(statistics\) "Efficient (statistics)") in the class of linear unbiased estimators. Practitioners have developed a variety of methods to maintain some or all of these desirable properties in real-world settings, because these classical assumptions are unlikely to hold exactly. For example, modeling [errors-in-variables](https://en.wikipedia.org/wiki/Errors-in-variables_model "Errors-in-variables model") can lead to reasonable estimates independent variables are measured with errors. [Heteroscedasticity-consistent standard errors](https://en.wikipedia.org/wiki/Heteroscedasticity-consistent_standard_errors "Heteroscedasticity-consistent standard errors") allow the variance of ${\displaystyle e_{i}}$ to change across values of ${\displaystyle X_{i}}$. Correlated errors that exist within subsets of the data or follow specific patterns can be handled using *clustered standard errors, geographic weighted regression*, or [Newey–West](https://en.wikipedia.org/wiki/Newey%E2%80%93West_estimator "Newey–West estimator") standard errors, among other techniques. When rows of data correspond to locations in space, the choice of how to model ${\displaystyle e_{i}}$ within geographic units can have important consequences.[^21] [^22] The subfield of [econometrics](https://en.wikipedia.org/wiki/Econometrics "Econometrics") is largely focused on developing techniques that allow researchers to make reasonable real-world conclusions in real-world settings, where classical assumptions do not hold exactly.

## Linear regression

In linear regression, the model specification is that the dependent variable, ${\displaystyle y_{i}}$ is a [linear combination](https://en.wikipedia.org/wiki/Linear_combination "Linear combination") of the *parameters* (but need not be linear in the *independent variables*). For example, in [simple linear regression](https://en.wikipedia.org/wiki/Simple_linear_regression "Simple linear regression") for modeling ${\displaystyle n}$ data points there is one independent variable: ${\displaystyle x_{i}}$, and two parameters, ${\displaystyle \beta _{0}}$ and ${\displaystyle \beta _{1}}$:

straight line: ${\displaystyle y_{i}=\beta _{0}+\beta _{1}x_{i}+\varepsilon _{i},\quad i=1,\dots ,n.\!}$

In multiple linear regression, there are several independent variables or functions of independent variables.

Adding a term in ${\displaystyle x_{i}^{2}}$ to the preceding regression gives:

parabola: ${\displaystyle y_{i}=\beta _{0}+\beta _{1}x_{i}+\beta _{2}x_{i}^{2}+\varepsilon _{i},\ i=1,\dots ,n.\!}$

This is still linear regression; although the expression on the right hand side is quadratic in the independent variable ${\displaystyle x_{i}}$, it is linear in the parameters ${\displaystyle \beta _{0}}$, ${\displaystyle \beta _{1}}$ and ${\displaystyle \beta _{2}.}$

In both cases, ${\displaystyle \varepsilon _{i}}$ is an error term and the subscript ${\displaystyle i}$ indexes a particular observation.

Returning our attention to the straight line case: Given a random sample from the population, we estimate the population parameters and obtain the sample linear regression model:

${\displaystyle {\widehat {y}}_{i}={\widehat {\beta }}_{0}+{\widehat {\beta }}_{1}x_{i}.}$

The [residual](https://en.wikipedia.org/wiki/Errors_and_residuals_in_statistics "Errors and residuals in statistics"), ${\displaystyle e_{i}=y_{i}-{\widehat {y}}_{i}}$, is the difference between the value of the dependent variable predicted by the model, ${\displaystyle {\widehat {y}}_{i}}$, and the true value of the dependent variable, ${\displaystyle y_{i}}$. One method of estimation is [ordinary least squares](https://en.wikipedia.org/wiki/Ordinary_least_squares "Ordinary least squares"). This method obtains parameter estimates that minimize the sum of squared [residuals](https://en.wikipedia.org/wiki/Errors_and_residuals_in_statistics "Errors and residuals in statistics"), [SSR](https://en.wikipedia.org/wiki/Residual_sum_of_squares "Residual sum of squares"):

${\displaystyle SSR=\sum _{i=1}^{n}e_{i}^{2}}$

Minimization of this function results in a set of [normal equations](https://en.wikipedia.org/wiki/Linear_least_squares_\(mathematics\) "Linear least squares (mathematics)"), a set of simultaneous linear equations in the parameters, which are solved to yield the parameter estimators, ${\displaystyle {\widehat {\beta }}_{0},{\widehat {\beta }}_{1}}$.

![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Linear_regression.svg/330px-Linear_regression.svg.png)

Illustration of linear regression on a data set

In the case of simple regression, the formulas for the least squares estimates are

${\displaystyle {\widehat {\beta }}_{1}={\frac {\sum (x_{i}-{\bar {x}})(y_{i}-{\bar {y}})}{\sum (x_{i}-{\bar {x}})^{2}}}}$

${\displaystyle {\widehat {\beta }}_{0}={\bar {y}}-{\widehat {\beta }}_{1}{\bar {x}}}$

where ${\displaystyle {\bar {x}}}$ is the [mean](https://en.wikipedia.org/wiki/Arithmetic_mean "Arithmetic mean") (average) of the ${\displaystyle x}$ values and ${\displaystyle {\bar {y}}}$ is the mean of the ${\displaystyle y}$ values.

Under the assumption that the population error term has a constant variance, the estimate of that variance is given by:

${\displaystyle {\hat {\sigma }}_{\varepsilon }^{2}={\frac {SSR}{n-2}}}$

This is called the [mean square error](https://en.wikipedia.org/wiki/Mean_square_error "Mean square error") (MSE) of the regression. The denominator is the sample size reduced by the number of model parameters estimated from the same data, ${\displaystyle (n-p)}$ for ${\displaystyle p}$ [regressors](https://en.wikipedia.org/wiki/Regressor "Regressor") or ${\displaystyle (n-p-1)}$ if an intercept is used.[^23] In this case, ${\displaystyle p=1}$ so the denominator is ${\displaystyle n-2}$.

The [standard errors](https://en.wikipedia.org/wiki/Standard_error_\(statistics\) "Standard error (statistics)") of the parameter estimates are given by

${\displaystyle {\hat {\sigma }}_{\beta _{1}}={\hat {\sigma }}_{\varepsilon }{\sqrt {\frac {1}{\sum (x_{i}-{\bar {x}})^{2}}}}}$

${\displaystyle {\hat {\sigma }}_{\beta _{0}}={\hat {\sigma }}_{\varepsilon }{\sqrt {{\frac {1}{n}}+{\frac {{\bar {x}}^{2}}{\sum (x_{i}-{\bar {x}})^{2}}}}}={\hat {\sigma }}_{\beta _{1}}{\sqrt {\frac {\sum x_{i}^{2}}{n}}}.}$

Under the further assumption that the population error term is normally distributed, the researcher can use these estimated standard errors to create [confidence intervals](https://en.wikipedia.org/wiki/Confidence_interval "Confidence interval") and conduct [hypothesis tests](https://en.wikipedia.org/wiki/Hypothesis_test "Hypothesis test") about the [population parameters](https://en.wikipedia.org/wiki/Population_parameter "Population parameter").

### General linear model

In the more general multiple regression model, there are ${\displaystyle p}$ independent variables:

${\displaystyle y_{i}=\beta _{1}x_{i1}+\beta _{2}x_{i2}+\cdots +\beta _{p}x_{ip}+\varepsilon _{i},\,}$

where ${\displaystyle x_{ij}}$ is the ${\displaystyle i}$ -th observation on the ${\displaystyle j}$ -th independent variable. If the first independent variable takes the value 1 for all ${\displaystyle i}$, ${\displaystyle x_{i1}=1}$, then ${\displaystyle \beta _{1}}$ is called the [regression intercept](https://en.wikipedia.org/wiki/Regression_intercept "Regression intercept").

The least squares parameter estimates are obtained from ${\displaystyle p}$ normal equations. The residual can be written as

${\displaystyle \varepsilon _{i}=y_{i}-{\hat {\beta }}_{1}x_{i1}-\cdots -{\hat {\beta }}_{p}x_{ip}.}$

The **normal equations** are

${\displaystyle \sum _{i=1}^{n}\sum _{k=1}^{p}x_{ij}x_{ik}{\hat {\beta }}_{k}=\sum _{i=1}^{n}x_{ij}y_{i},\ j=1,\dots ,p.\,}$

In matrix notation, the normal equations are written as

${\displaystyle \mathbf {(X^{\top }X){\hat {\boldsymbol {\beta }}}={}X^{\top }Y} ,\,}$

where the ${\displaystyle ij}$ element of ${\displaystyle \mathbf {X} }$ is ${\displaystyle x_{ij}}$, the ${\displaystyle i}$ element of the column vector ${\displaystyle Y}$ is ${\displaystyle y_{i}}$, and the ${\displaystyle j}$ element of ${\displaystyle {\hat {\boldsymbol {\beta }}}}$ is ${\displaystyle {\hat {\beta }}_{j}}$. Thus ${\displaystyle \mathbf {X} }$ is ${\displaystyle n\times p}$, ${\displaystyle Y}$ is ${\displaystyle n\times 1}$, and ${\displaystyle {\hat {\boldsymbol {\beta }}}}$ is ${\displaystyle p\times 1}$. The solution is

${\displaystyle \mathbf {{\hat {\boldsymbol {\beta }}}=(X^{\top }X)^{-1}X^{\top }Y} .\,}$

### Diagnostics

Once a regression model has been constructed, it may be important to confirm the [goodness of fit](https://en.wikipedia.org/wiki/Goodness_of_fit "Goodness of fit") of the model and the [statistical significance](https://en.wikipedia.org/wiki/Statistical_significance "Statistical significance") of the estimated parameters. Commonly used checks of goodness of fit include the [R-squared](https://en.wikipedia.org/wiki/R-squared "R-squared"), analyses of the pattern of [residuals](https://en.wikipedia.org/wiki/Errors_and_residuals_in_statistics "Errors and residuals in statistics") and hypothesis testing. Statistical significance can be checked by an [F-test](https://en.wikipedia.org/wiki/F-test "F-test") of the overall fit, followed by [t-tests](https://en.wikipedia.org/wiki/T-test "T-test") of individual parameters.

Interpretations of these diagnostic tests rest heavily on the model's assumptions. Although examination of the residuals can be used to invalidate a model, the results of a [t-test](https://en.wikipedia.org/wiki/T-test "T-test") or [F-test](https://en.wikipedia.org/wiki/F-test "F-test") are sometimes more difficult to interpret if the model's assumptions are violated. For example, if the error term does not have a normal distribution, in small samples the estimated parameters will not follow normal distributions and complicate inference. With relatively large samples, however, a [central limit theorem](https://en.wikipedia.org/wiki/Central_limit_theorem "Central limit theorem") can be invoked such that hypothesis testing may proceed using asymptotic approximations.

### Limited dependent variables

[Limited dependent variables](https://en.wikipedia.org/wiki/Limited_dependent_variable "Limited dependent variable"), which are response variables that are [categorical](https://en.wikipedia.org/wiki/Categorical_variable "Categorical variable") or constrained to fall only in a certain range, often arise in [econometrics](https://en.wikipedia.org/wiki/Econometrics "Econometrics").

The response variable may be non-continuous ("limited" to lie on some subset of the real line). For binary (zero or one) variables, if analysis proceeds with least-squares linear regression, the model is called the [linear probability model](https://en.wikipedia.org/wiki/Linear_probability_model "Linear probability model"). Nonlinear models for binary dependent variables include the [probit](https://en.wikipedia.org/wiki/Probit_model "Probit model") and [logit model](https://en.wikipedia.org/wiki/Logistic_regression "Logistic regression"). The [multivariate probit](https://en.wikipedia.org/wiki/Multivariate_probit "Multivariate probit") model is a standard method of estimating a joint relationship between several binary dependent variables and some independent variables. For [categorical variables](https://en.wikipedia.org/wiki/Categorical_variable "Categorical variable") with more than two values there is the [multinomial logit](https://en.wikipedia.org/wiki/Multinomial_logit "Multinomial logit"). For [ordinal variables](https://en.wikipedia.org/wiki/Ordinal_variable "Ordinal variable") with more than two values, there are the [ordered logit](https://en.wikipedia.org/wiki/Ordered_logit "Ordered logit") and [ordered probit](https://en.wikipedia.org/wiki/Ordered_probit "Ordered probit") models. [Censored regression models](https://en.wikipedia.org/wiki/Censored_regression_model "Censored regression model") may be used when the dependent variable is only sometimes observed, and [Heckman correction](https://en.wikipedia.org/wiki/Heckman_correction "Heckman correction") type models may be used when the sample is not randomly selected from the population of interest.

An alternative to such procedures is linear regression based on [polychoric correlation](https://en.wikipedia.org/wiki/Polychoric_correlation "Polychoric correlation") (or polyserial correlations) between the categorical variables. Such procedures differ in the assumptions made about the distribution of the variables in the population. If the variable is positive with low values and represents the repetition of the occurrence of an event, then count models like the [Poisson regression](https://en.wikipedia.org/wiki/Poisson_regression "Poisson regression") or the [negative binomial](https://en.wikipedia.org/wiki/Negative_binomial "Negative binomial") model may be used.

## Nonlinear regression

When the model function is not linear in the parameters, the sum of squares must be minimized by an iterative procedure. This introduces many complications which are summarized in [Differences between linear and non-linear least squares](https://en.wikipedia.org/wiki/Least_squares#Differences_between_linear_and_nonlinear_least_squares "Least squares").

## Prediction (interpolation and extrapolation)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/CurveWeightHeight.png/500px-CurveWeightHeight.png)

In the middle, the fitted straight line represents the best balance between the points above and below this line. The dotted straight lines represent the two extreme lines, considering only the variation in the slope. The inner curves represent the estimated range of values considering the variation in both slope and intercept. The outer curves represent a prediction for a new measurement. 24

Regression models ***predict*** a value of the *Y* variable given known values of the *X* variables. Prediction *within* the range of values in the dataset used for model-fitting is known informally as *[interpolation](https://en.wikipedia.org/wiki/Interpolation "Interpolation")*. Prediction *outside* this range of the data is known as *[extrapolation](https://en.wikipedia.org/wiki/Extrapolation "Extrapolation")*. Performing extrapolation relies strongly on the regression assumptions. The further the extrapolation goes outside the data, the more room there is for the model to fail due to differences between the assumptions and the sample data or the true values.

A *[prediction interval](https://en.wikipedia.org/wiki/Prediction_interval "Prediction interval")* that represents the uncertainty may accompany the point prediction. Such intervals tend to expand rapidly as the values of the independent variable(s) moved outside the range covered by the observed data.

For such reasons and others, some tend to say that it might be unwise to undertake extrapolation.[^25]

### Model selection

The assumption of a particular form for the relation between *Y* and *X* is another source of uncertainty. A properly conducted regression analysis will include an assessment of how well the assumed form is matched by the observed data, but it can only do so within the range of values of the independent variables actually available. This means that any extrapolation is particularly reliant on the assumptions being made about the structural form of the regression relationship. If this knowledge includes the fact that the dependent variable cannot go outside a certain range of values, this can be made use of in selecting the model – even if the observed dataset has no values particularly near such bounds. The implications of this step of choosing an appropriate functional form for the regression can be great when extrapolation is considered. At a minimum, it can ensure that any extrapolation arising from a fitted model is "realistic" (or in accord with what is known).

## Power and sample size calculations

There are no generally agreed methods for relating the number of observations versus the number of independent variables in the model. One method conjectured by Good and Hardin is ${\displaystyle N=m^{n}}$, where ${\displaystyle N}$ is the sample size, ${\displaystyle n}$ is the number of independent variables and ${\displaystyle m}$ is the number of observations needed to reach the desired precision if the model had only one independent variable.[^26] For example, a researcher is building a linear regression model using a dataset that contains 1000 patients (${\displaystyle N}$). If the researcher decides that five observations are needed to precisely define a straight line (${\displaystyle m}$), then the maximum number of independent variables (${\displaystyle n}$) the model can support is 4, because

${\displaystyle {\frac {\log 1000}{\log 5}}\approx 4.29}$.

## Other methods

Although the parameters of a regression model are usually estimated using the method of least squares, other methods which have been used include:

- [Bayesian methods](https://en.wikipedia.org/wiki/Bayesian_method "Bayesian method"), e.g. [Bayesian linear regression](https://en.wikipedia.org/wiki/Bayesian_linear_regression "Bayesian linear regression")
- Percentage regression, for situations where reducing *percentage* errors is deemed more appropriate.[^27]
- [Least absolute deviations](https://en.wikipedia.org/wiki/Least_absolute_deviations "Least absolute deviations"), which is more robust in the presence of outliers, leading to [quantile regression](https://en.wikipedia.org/wiki/Quantile_regression "Quantile regression")
- [Nonparametric regression](https://en.wikipedia.org/wiki/Nonparametric_regression "Nonparametric regression"), requires a large number of observations and is computationally intensive
- [Scenario optimization](https://en.wikipedia.org/wiki/Scenario_optimization "Scenario optimization"), leading to [interval predictor models](https://en.wikipedia.org/wiki/Interval_predictor_model "Interval predictor model")

## Software

All major statistical software packages perform [least squares](https://en.wikipedia.org/wiki/Least_squares "Least squares") regression analysis and inference. [Simple linear regression](https://en.wikipedia.org/wiki/Simple_linear_regression "Simple linear regression") and multiple regression using least squares can be done in some [spreadsheet](https://en.wikipedia.org/wiki/Spreadsheet "Spreadsheet") applications and on some calculators. While many statistical software packages can perform various types of nonparametric and robust regression, these methods are less standardized. Different software packages implement different methods, and a method with a given name may be implemented differently in different packages. Specialized regression software has been developed for use in fields such as survey analysis and neuroimaging.

[^1]: Yan, Xin; Su, Xiaogang (2009). [*Linear Regression Analysis: Theory and Computing*](https://books.google.com/books?id=5pdpDQAAQBAJ). World Scientific Publishing. pp. 2–3. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [9789812834102](https://en.wikipedia.org/wiki/Special:BookSources/9789812834102 "Special:BookSources/9789812834102").

[^2]: Freund, Rudolf J.; Mohr, Donna L.; Wilson, William J. (2010). [*Statistical Methods*](https://books.google.com/books?id=12LPWl6QxrsC). Elsevier Science. p. 323. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [9780080961033](https://en.wikipedia.org/wiki/Special:BookSources/9780080961033 "Special:BookSources/9780080961033").

[^3]: [Necessary Condition Analysis](http://www.erim.eur.nl/centres/necessary-condition-analysis/)

[^4]: David A. Freedman (27 April 2009). [*Statistical Models: Theory and Practice*](https://books.google.com/books?id=fW_9BV5Wpf8C&q=%22regression+analysis%22). Cambridge University Press. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-1-139-47731-4](https://en.wikipedia.org/wiki/Special:BookSources/978-1-139-47731-4 "Special:BookSources/978-1-139-47731-4").

[^5]: R. Dennis Cook; Sanford Weisberg [Criticism and Influence Analysis in Regression](https://www.jstor.org/stable/270724), *Sociological Methodology*, Vol. 13. (1982), pp. 313–361

[^6]: Belenkiy, Ari; Echague, Eduardo Vila (2008). "Groping Toward Linear Regression Analysis: Newton's Analysis of Hipparchus' Equinox Observations". [arXiv](https://en.wikipedia.org/wiki/ArXiv_\(identifier\) "ArXiv (identifier)"):[0810.4948](https://arxiv.org/abs/0810.4948) \[[physics.hist-ph](https://arxiv.org/archive/physics.hist-ph)\].

[^7]: Buchwald, Jed Z.; Feingold, Mordechai (2013). *Newton and the Origin of Civilization*. [Princeton University Press](https://en.wikipedia.org/wiki/Princeton_University_Press "Princeton University Press"). pp. 90–93, 101–103. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-691-15478-7](https://en.wikipedia.org/wiki/Special:BookSources/978-0-691-15478-7 "Special:BookSources/978-0-691-15478-7").

[^8]: [A.M. Legendre](https://en.wikipedia.org/wiki/Adrien-Marie_Legendre "Adrien-Marie Legendre"). [*Nouvelles méthodes pour la détermination des orbites des comètes*](https://books.google.com/books?id=FRcOAAAAQAAJ), Firmin Didot, Paris, 1805. "Sur la Méthode des moindres quarrés" appears as an appendix.

[^9]: Chapter 1 of: Angrist, J. D., & Pischke, J. S. (2008). *[Mostly Harmless Econometrics: An Empiricist's Companion](https://en.wikipedia.org/wiki/Mostly_Harmless_Econometrics:_An_Empiricist%27s_Companion "Mostly Harmless Econometrics: An Empiricist's Companion")*. Princeton University Press.

[^10]: [Gauss, C.F.](https://en.wikipedia.org/wiki/Carl_Friedrich_Gauss "Carl Friedrich Gauss") (1821–1823). [*Theoria combinationis observationum erroribus minimis obnoxiae*](https://books.google.com/books?id=ZQ8OAAAAQAAJ&q=Theoria+combinationis+observationum+erroribus+minimis+obnoxiae) – via Google Books.

[^11]: Mogull, Robert G. (2004). *Second-Semester Applied Statistics*. Kendall/Hunt Publishing Company. p. 59. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-7575-1181-3](https://en.wikipedia.org/wiki/Special:BookSources/978-0-7575-1181-3 "Special:BookSources/978-0-7575-1181-3").

[^12]: Galton, Francis (1989). ["Kinship and Correlation (reprinted 1989)"](https://doi.org/10.1214%2Fss%2F1177012581). *Statistical Science*. **4** (2): 80–86. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1214/ss/1177012581](https://doi.org/10.1214%2Fss%2F1177012581). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2245330](https://www.jstor.org/stable/2245330).

[^13]: [Francis Galton](https://en.wikipedia.org/wiki/Francis_Galton "Francis Galton"). "Typical laws of heredity", Nature 15 (1877), 492–495, 512–514, 532–533. *(Galton uses the term "reversion" in this paper, which discusses the size of peas.)*

[^14]: Francis Galton. Presidential address, Section H, Anthropology. (1885) *(Galton uses the term "regression" in this paper, which discusses the height of humans.)*

[^15]: [Yule, G. Udny](https://en.wikipedia.org/wiki/G._Udny_Yule "G. Udny Yule") (1897). ["On the Theory of Correlation"](https://zenodo.org/record/1449703). *Journal of the Royal Statistical Society*. **60** (4): 812–54. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/2979746](https://doi.org/10.2307%2F2979746). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2979746](https://www.jstor.org/stable/2979746).

[^16]: [Pearson, Karl](https://en.wikipedia.org/wiki/Karl_Pearson "Karl Pearson"); Yule, G.U.; Blanchard, Norman; Lee, Alice (1903). ["The Law of Ancestral Heredity"](https://zenodo.org/record/1431601). *[Biometrika](https://en.wikipedia.org/wiki/Biometrika "Biometrika")*. **2** (2): 211–236. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1093/biomet/2.2.211](https://doi.org/10.1093%2Fbiomet%2F2.2.211). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2331683](https://www.jstor.org/stable/2331683).

[^17]: Fisher, R.A. (1922). ["The goodness of fit of regression formulae, and the distribution of regression coefficients"](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1084801). *Journal of the Royal Statistical Society*. **85** (4): 597–612. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2307/2341124](https://doi.org/10.2307%2F2341124). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [2341124](https://www.jstor.org/stable/2341124). [PMC](https://en.wikipedia.org/wiki/PMC_\(identifier\) "PMC (identifier)") [1084801](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1084801).

[^18]: [Ronald A. Fisher](https://en.wikipedia.org/wiki/Ronald_A._Fisher "Ronald A. Fisher") (1970). [*Statistical Methods for Research Workers*](https://archive.org/details/dli.scoerat.2986statisticalmethodsforresearchworkers/page/n7/mode/2up) (Twelfth ed.). [Edinburgh](https://en.wikipedia.org/wiki/Edinburgh "Edinburgh"): Oliver and Boyd. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-05-002170-5](https://en.wikipedia.org/wiki/Special:BookSources/978-0-05-002170-5 "Special:BookSources/978-0-05-002170-5").

[^19]: Aldrich, John (2005). ["Fisher and Regression"](https://eprints.soton.ac.uk/34871/1/088342305000000331.pdf) (PDF). *Statistical Science*. **20** (4): 401–417. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1214/088342305000000331](https://doi.org/10.1214%2F088342305000000331). [JSTOR](https://en.wikipedia.org/wiki/JSTOR_\(identifier\) "JSTOR (identifier)") [20061201](https://www.jstor.org/stable/20061201).

[^20]: Rodney Ramcharan. [Regressions: Why Are Economists Obessessed with Them?](http://www.imf.org/external/pubs/ft/fandd/2006/03/basics.htm) March 2006. Accessed 2011-12-03.

[^21]: Fotheringham, A. Stewart; Brunsdon, Chris; Charlton, Martin (2002). *Geographically weighted regression: the analysis of spatially varying relationships* (Reprint ed.). Chichester, England: John Wiley. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-471-49616-8](https://en.wikipedia.org/wiki/Special:BookSources/978-0-471-49616-8 "Special:BookSources/978-0-471-49616-8").

[^22]: Fotheringham, AS; Wong, DWS (1 January 1991). "The modifiable areal unit problem in multivariate statistical analysis". *Environment and Planning A*. **23** (7): 1025–1044. [Bibcode](https://en.wikipedia.org/wiki/Bibcode_\(identifier\) "Bibcode (identifier)"):[1991EnPlA..23.1025F](https://ui.adsabs.harvard.edu/abs/1991EnPlA..23.1025F). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1068/a231025](https://doi.org/10.1068%2Fa231025). [S2CID](https://en.wikipedia.org/wiki/S2CID_\(identifier\) "S2CID (identifier)") [153979055](https://api.semanticscholar.org/CorpusID:153979055).

[^23]: Steel, R.G.D, and Torrie, J. H., *Principles and Procedures of Statistics with Special Reference to the Biological Sciences.*, [McGraw Hill](https://en.wikipedia.org/wiki/McGraw_Hill "McGraw Hill"), 1960, page 288.

[^24]: Rouaud, Mathieu (2013). [*Probability, Statistics and Estimation*](http://www.incertitudes.fr/book.pdf) (PDF). p. 60.

[^25]: Chiang, C.L, (2003) *Statistical methods of analysis*, World Scientific. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [981-238-310-7](https://en.wikipedia.org/wiki/Special:BookSources/981-238-310-7 "Special:BookSources/981-238-310-7") - [page 274 section 9.7.4 "interpolation vs extrapolation"](https://books.google.com/books?id=BuPNIbaN5v4C&dq=regression+extrapolation&pg=PA274)

[^26]: [Good, P. I.](https://en.wikipedia.org/wiki/Phillip_Good "Phillip Good"); Hardin, J. W. (2009). *Common Errors in Statistics (And How to Avoid Them)* (3rd ed.). Hoboken, New Jersey: Wiley. p. 211. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-470-45798-6](https://en.wikipedia.org/wiki/Special:BookSources/978-0-470-45798-6 "Special:BookSources/978-0-470-45798-6").

[^27]: Tofallis, C. (2009). ["Least Squares Percentage Regression"](https://digitalcommons.wayne.edu/cgi/viewcontent.cgi?article=1466&context=jmasm). *Journal of Modern Applied Statistical Methods*. **7**: 526–534. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.2139/ssrn.1406472](https://doi.org/10.2139%2Fssrn.1406472). [hdl](https://en.wikipedia.org/wiki/Hdl_\(identifier\) "Hdl (identifier)"):[2299/965](https://hdl.handle.net/2299%2F965). [SSRN](https://en.wikipedia.org/wiki/SSRN_\(identifier\) "SSRN (identifier)") [1406472](https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1406472).