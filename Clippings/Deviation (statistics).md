---
title: Deviation (statistics)
source: https://en.wikipedia.org/wiki/Deviation_(statistics)
author:
  - "[[Wikipedia]]"
published: 2007-02-02
created: 2026-06-06
description:
tags:
  - clippings
  - Quant
  - mathematics
---
![](https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Deviation_from_Mean_of_a_Random_Distribution.jpg/250px-Deviation_from_Mean_of_a_Random_Distribution.jpg)

Plot of standard deviation of a random distribution

In [mathematics](https://en.wikipedia.org/wiki/Mathematics "Mathematics") and [statistics](https://en.wikipedia.org/wiki/Statistics "Statistics"), **deviation** serves as a measure to quantify the disparity between an [observed value](https://en.wikipedia.org/wiki/Observed_value "Observed value") of a variable and another designated value, frequently the mean of that variable. Deviations with respect to the [sample mean](https://en.wikipedia.org/wiki/Sample_mean "Sample mean") and the [population mean](https://en.wikipedia.org/wiki/Population_mean "Population mean") (or " [true value](https://en.wikipedia.org/wiki/True_value "True value") ") are called [*errors* and *residuals*](https://en.wikipedia.org/wiki/Errors_and_residuals "Errors and residuals"), respectively. The [sign](https://en.wikipedia.org/wiki/Sign_\(mathematics\) "Sign (mathematics)") of the deviation reports the direction of that difference: the deviation is positive when the observed value exceeds the reference value. The [absolute value](https://en.wikipedia.org/wiki/Absolute_value "Absolute value") of the deviation indicates the size or magnitude of the difference. In a given [sample](https://en.wikipedia.org/wiki/Sample_\(statistics\) "Sample (statistics)"), there are as many deviations as [sample points](https://en.wikipedia.org/wiki/Sample_point "Sample point"). [Summary statistics](https://en.wikipedia.org/wiki/Summary_statistics "Summary statistics") can be derived from a set of deviations, such as the *[standard deviation](https://en.wikipedia.org/wiki/Standard_deviation "Standard deviation")* and the *[mean absolute deviation](https://en.wikipedia.org/wiki/Mean_absolute_deviation)*, measures of [dispersion](https://en.wikipedia.org/wiki/Statistical_dispersion "Statistical dispersion"), and the *[mean signed deviation](https://en.wikipedia.org/wiki/Mean_signed_deviation "Mean signed deviation")*, a measure of [bias.](https://en.wikipedia.org/wiki/Bias_of_an_estimator "Bias of an estimator")[^1]

The deviation of each data point is calculated by subtracting the mean of the data set from the individual data point. Mathematically, the deviation *d* of a data point *x* in a data set with respect to the mean *m* is given by the difference:

$$
{\displaystyle d=x-m}
$$

This calculation represents the "distance" of a data point from the mean and provides information about how much individual values vary from the average. Positive deviations indicate values above the mean, while negative deviations indicate values below the mean.[^1]

The sum of squared deviations is a key component in the calculation of [variance](https://en.wikipedia.org/wiki/Variance "Variance"), another measure of the spread or dispersion of a data set. Variance is calculated by averaging the squared deviations. Deviation is a fundamental concept in understanding the distribution and variability of data points in statistical analysis.[^1]

## Types

A deviation that is a difference between an observed value and the *true value* of a quantity of interest (where *true value* denotes the Expected Value, such as the population mean) is an error.[^2]

### Signed deviations

A deviation that is the difference between the observed value and an estimate of the true value (e.g. the sample mean) is a *residual*. These concepts are applicable for data at the [interval](https://en.wikipedia.org/wiki/Level_of_measurement#Interval_scale "Level of measurement") and [ratio](https://en.wikipedia.org/wiki/Level_of_measurement#Ratio_scale "Level of measurement") levels of measurement.[^3]

### Unsigned or absolute deviation

Absolute deviation in statistics is a metric that measures the overall difference between individual data points and a central value, typically the mean or median of a dataset. It is determined by taking the absolute value of the difference between each data point and the central value and then averaging these absolute differences.[^4] The formula is expressed as follows: 
$$
{\displaystyle D_{i}=|x_{i}-m(X)|,}
$$
 where

- *D <sub>i</sub>* is the absolute deviation,
- *x <sub>i</sub>* is the data element,
- *m* (*X*) is the chosen measure of [central tendency](https://en.wikipedia.org/wiki/Central_tendency "Central tendency") of the data set—sometimes the [mean](https://en.wikipedia.org/wiki/Mean "Mean") (${\displaystyle {\overline {x}}}$), but most often the [median](https://en.wikipedia.org/wiki/Median "Median").

The average absolute deviation (AAD) in statistics is a measure of the dispersion or spread of a set of data points around a central value, usually the mean or median. It is calculated by taking the average of the absolute differences between each data point and the chosen central value. AAD provides a measure of the typical magnitude of deviations from the central value in a dataset, giving insights into the overall variability of the data.[^5]

Least absolute deviation (LAD) is a statistical method used in [regression analysis](https://en.wikipedia.org/wiki/Regression_analysis "Regression analysis") to estimate the coefficients of a linear model. Unlike the more common least squares method, which minimizes the sum of squared vertical distances (residuals) between the observed and predicted values, the LAD method minimizes the sum of the absolute vertical distances.

In the context of linear regression, if (*x* <sub>1</sub>,*y* <sub>1</sub>), (*x* <sub>2</sub>,*y* <sub>2</sub>),... are the data points, and *a* and *b* are the coefficients to be estimated for the linear model

$$
{\displaystyle y=ax+b}
$$

the least absolute deviation estimates (*a* and *b*) are obtained by minimizing the sum.

The LAD method is less sensitive to outliers compared to the least squares method, making it a robust regression technique in the presence of skewed or heavy-tailed residual distributions.[^6]

## Summary statistics

### Mean signed deviation

For an [unbiased estimator](https://en.wikipedia.org/wiki/Bias_of_an_estimator "Bias of an estimator"), the average of the signed deviations across the entire set of all observations from the unobserved population parameter value averages zero over an arbitrarily large number of samples. However, by construction the average of signed deviations of values from the sample mean value is always zero, though the average signed deviation from another measure of central tendency, such as the sample median, need not be zero.

Mean Signed Deviation is a statistical measure used to assess the average deviation of a set of values from a central point, usually the mean. It is calculated by taking the arithmetic mean of the signed differences between each data point and the mean of the dataset.

The term "signed" indicates that the deviations are considered with their respective signs, meaning whether they are above or below the mean. Positive deviations (above the mean) and negative deviations (below the mean) are included in the calculation. The mean signed deviation provides a measure of the average distance and direction of data points from the mean, offering insights into the overall trend and distribution of the data.[^3]

### Dispersion

Statistics of the distribution of deviations are used as measures of [statistical dispersion](https://en.wikipedia.org/wiki/Statistical_dispersion "Statistical dispersion").

![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e5/Standard_deviation_graph.jpg/250px-Standard_deviation_graph.jpg)

A distribution with different standard deviations reflects varying degrees of dispersion among its data points. The first standard deviation from the mean in a normal distribution encompasses approximately 68% of the data. The second standard deviation from the mean in a normal distribution encompasses a larger portion of the data, covering approximately 95% of the observations.

- [Standard deviation](https://en.wikipedia.org/wiki/Standard_deviation "Standard deviation") is a widely used measure of the spread or dispersion of a dataset. It quantifies the average amount of variation or deviation of individual data points from the mean of the dataset. It uses [squared](https://en.wikipedia.org/wiki/Square_\(algebra\) "Square (algebra)") deviations, and has desirable properties. Standard deviation is sensitive to extreme values, making it not [robust](https://en.wikipedia.org/wiki/Robust_statistics "Robust statistics").[^7]
- [Average absolute deviation](https://en.wikipedia.org/wiki/Average_absolute_deviation "Average absolute deviation") is a measure of the dispersion in a dataset that is less influenced by extreme values. It is calculated by finding the [absolute difference](https://en.wikipedia.org/wiki/Absolute_difference "Absolute difference") between each data point and the mean, summing these absolute differences, and then dividing by the number of observations. This metric provides a more robust estimation of variability compared to standard deviation.[^8]
- [Median absolute deviation](https://en.wikipedia.org/wiki/Median_absolute_deviation "Median absolute deviation") is a robust statistic that employs the median, rather than the mean, to measure the spread of a dataset. It is calculated by finding the absolute difference between each data point and the median, then computing the median of these absolute differences. This makes median absolute deviation less sensitive to outliers, offering a robust alternative to standard deviation.[^9]
- [Maximum absolute deviation](https://en.wikipedia.org/wiki/Maximum_absolute_deviation "Maximum absolute deviation") is a straightforward measure of the maximum difference between any individual data point and the mean of the dataset. However, it is highly non-robust, as it can be disproportionately influenced by a single extreme value. This metric may not provide a reliable measure of dispersion when dealing with datasets containing outliers.[^8]

## Normalization

Deviations, which measure the difference between observed values and some reference point, inherently carry units corresponding to the measurement scale used. For example, if lengths are being measured, deviations would be expressed in units like meters or feet. To make deviations unitless and facilitate comparisons across different datasets, one can [nondimensionalize](https://en.wikipedia.org/wiki/Nondimensionalization "Nondimensionalization").

One common method involves dividing deviations by a measure of scale ([statistical dispersion](https://en.wikipedia.org/wiki/Statistical_dispersion "Statistical dispersion")), with the population standard deviation used for standardizing or the sample standard deviation for [studentizing](https://en.wikipedia.org/wiki/Studentizing "Studentizing") (e.g., [Studentized residual](https://en.wikipedia.org/wiki/Studentized_residual "Studentized residual")).

Another approach to nondimensionalization focuses on scaling by location rather than dispersion. The percent deviation offers an illustration of this method, calculated as the difference between the observed value and the accepted value, divided by the accepted value, and then multiplied by 100%. By scaling the deviation based on the accepted value, this technique allows for expressing deviations in percentage terms, providing a clear perspective on the relative difference between the observed and accepted values. Both methods of nondimensionalization serve the purpose of making deviations comparable and interpretable beyond the specific measurement units.[^10]

## Examples

In one example, a series of measurements are taken of the speed of sound in a particular medium. The accepted or expected value for the speed of sound in this medium, based on theoretical calculations, is 343 meters per second.

Now, during an experiment, multiple measurements are taken by different researchers. Researcher A measures the speed of sound as 340 meters per second, resulting in a deviation of −3 meters per second from the expected value. Researcher B, on the other hand, measures the speed as 345 meters per second, resulting in a deviation of +2 meters per second.

In this scientific context, deviation helps quantify how individual measurements differ from the theoretically predicted or accepted value. It provides insights into the [accuracy and precision](https://en.wikipedia.org/wiki/Accuracy_and_precision "Accuracy and precision") of experimental results, allowing researchers to assess the reliability of their data and potentially identify factors contributing to discrepancies.

In another example, suppose a chemical reaction is expected to yield 100 grams of a specific compound based on stoichiometry. However, in an actual laboratory experiment, several trials are conducted with different conditions.

In Trial 1, the actual yield is measured to be 95 grams, resulting in a deviation of −5 grams from the expected yield. In Trial 2, the actual yield is measured to be 102 grams, resulting in a deviation of +2 grams. These deviations from the expected value provide valuable information about the efficiency and reproducibility of the chemical reaction under different conditions.

[^1]: Lee, Dong Kyu; In, Junyong; Lee, Sangseok (2015). ["Standard deviation and standard error of the mean"](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4452664). *Korean Journal of Anesthesiology*. **68** (3): 220–223. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.4097/kjae.2015.68.3.220](https://doi.org/10.4097%2Fkjae.2015.68.3.220). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [2005-6419](https://search.worldcat.org/issn/2005-6419). [PMC](https://en.wikipedia.org/wiki/PMC_\(identifier\) "PMC (identifier)") [4452664](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4452664). [PMID](https://en.wikipedia.org/wiki/PMID_\(identifier\) "PMID (identifier)") [26045923](https://pubmed.ncbi.nlm.nih.gov/26045923).

[^2]: Livingston, Edward H. (June 2004). ["The mean and standard deviation: what does it all mean?"](https://doi.org/10.1016/j.jss.2004.02.008). *Journal of Surgical Research*. **119** (2): 117–123. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1016/j.jss.2004.02.008](https://doi.org/10.1016%2Fj.jss.2004.02.008). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0022-4804](https://search.worldcat.org/issn/0022-4804). [PMID](https://en.wikipedia.org/wiki/PMID_\(identifier\) "PMID (identifier)") [15145692](https://pubmed.ncbi.nlm.nih.gov/15145692).

[^3]: Dodge, Yadolah, ed. (2003-08-07). [*The Oxford Dictionary Of Statistical Terms*](https://dx.doi.org/10.1093/oso/9780198509943.001.0001). Oxford University Press, Oxford. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1093/oso/9780198509943.001.0001](https://doi.org/10.1093%2Foso%2F9780198509943.001.0001). [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-19-850994-3](https://en.wikipedia.org/wiki/Special:BookSources/978-0-19-850994-3 "Special:BookSources/978-0-19-850994-3").

[^4]: Konno, Hiroshi; Koshizuka, Tomoyuki (2005-10-01). ["Mean-absolute deviation model"](http://www.tandfonline.com/doi/abs/10.1080/07408170591007786). *IIE Transactions*. **37** (10): 893–900. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1080/07408170591007786](https://doi.org/10.1080%2F07408170591007786). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0740-817X](https://search.worldcat.org/issn/0740-817X).

[^5]: Pham-Gia, T.; Hung, T. L. (2001-10-01). ["The mean and median absolute deviations"](https://www.sciencedirect.com/science/article/pii/S0895717701001091). *Mathematical and Computer Modelling*. **34** (7): 921–936. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1016/S0895-7177(01)00109-1](https://doi.org/10.1016%2FS0895-7177%2801%2900109-1). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0895-7177](https://search.worldcat.org/issn/0895-7177).

[^6]: Chen, Kani; Ying, Zhiliang (1996-04-01). ["A counterexample to a conjecture concerning the Hall-Wellner band"](https://doi.org/10.1214%2Faos%2F1032894456). *The Annals of Statistics*. **24** (2). [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1214/aos/1032894456](https://doi.org/10.1214%2Faos%2F1032894456). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0090-5364](https://search.worldcat.org/issn/0090-5364).

[^7]: ["2. Mean and standard deviation | The BMJ"](https://www.bmj.com/about-bmj/resources-readers/publications/statistics-square-one/2-mean-and-standard-deviation). *The BMJ | The BMJ: leading general medical journal. Research. Education. Comment*. 2020-10-28. Retrieved 2022-11-02.

[^8]: Pham-Gia, T.; Hung, T. L. (2001-10-01). ["The mean and median absolute deviations"](https://www.sciencedirect.com/science/article/pii/S0895717701001091). *Mathematical and Computer Modelling*. **34** (7): 921–936. [doi](https://en.wikipedia.org/wiki/Doi_\(identifier\) "Doi (identifier)"):[10.1016/S0895-7177(01)00109-1](https://doi.org/10.1016%2FS0895-7177%2801%2900109-1). [ISSN](https://en.wikipedia.org/wiki/ISSN_\(identifier\) "ISSN (identifier)") [0895-7177](https://search.worldcat.org/issn/0895-7177).

[^9]: Jones, Alan R. (2018-10-09). [*Probability, Statistics and Other Frightening Stuff*](https://books.google.com/books?id=OvtsDwAAQBAJ). Routledge. p. 73. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-1-351-66138-6](https://en.wikipedia.org/wiki/Special:BookSources/978-1-351-66138-6 "Special:BookSources/978-1-351-66138-6").

[^10]: Freedman, David; Pisani, Robert; Purves, Roger (2007). *Statistics* (4 ed.). New York: Norton. [ISBN](https://en.wikipedia.org/wiki/ISBN_\(identifier\) "ISBN (identifier)") [978-0-393-93043-6](https://en.wikipedia.org/wiki/Special:BookSources/978-0-393-93043-6 "Special:BookSources/978-0-393-93043-6").