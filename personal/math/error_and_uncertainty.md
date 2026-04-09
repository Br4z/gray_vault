---
reviewed_on: "2025-02-12"
sources:
  - author: NA
    url: https://www.physics.columbia.edu/sites/default/files/content/Lab%20Resources/Lab%20Guide%201_%20Introduction%20to%20Error%20and%20Uncertainty.pdf
    language: English
---

# Error and uncertainty

## Theory

### Types of uncertainties

Uncertainty in a measurement can arise from three possible origins: the measuring device, the procedure of how you measure, and the observed quantity itself...

#### Systematic uncertainties

Systematic uncertainties or systematic errors always bias results in one specific direction. They will cause your measurement to consistently be higher or lower than the accepted value.

Systematic errors are usually due to imperfections in the equipment, improper or biased observation, or the presence of additional physical effects not taken into account...

#### Random uncertainties

In contrast to systematic uncertainties, random uncertainties are an unavoidable result of measurement, no matter how well designed and calibrated the tools you are using.

### Accuracy and precision

An important distinction in physics is the difference between the **accuracy** and the **precision** of a measurement. Accuracy refers to the closeness of a measured value to
a standard or known value...

**Precision** refers to the closeness of two or more measurements to each other...Precision is independent of accuracy. You can be very precise but inaccurate, as described above. You can also be accurate but imprecise.

### Propagation of uncertainties

Often, we are not directly interested in a measured value, but we want to use it in a formula to calculate another quantity. In many cases, we measure many of the quantities in the formula and each has an associated uncertainty. We deal here with how to propagate uncertainties to obtain a well-defined uncertainty on a computed quantity.

#### Adding/subtracting quantities

...the combined uncertainty is the sum of the absolute uncertainties of the constituent parts.

#### Multiplying/dividing quantities

...the combined relative uncertainty is the sum of the relative uncertainties of the constituent parts.

#### Multiplication by a constant

...leaves the relative error unchanged....

#### Powers and roots

...its relative uncertainty is multiplied by the exponent.

> We can see roots as fractional powers.

$$
f(x) = x^n \quad \frac{ ^\sigma f(x) } { f(x) } = |n| \frac{ ^\sigma x }{ x }
$$

$\sigma$ is the absoute uncertainty.

#### Other functions

$$
\sigma_{ f(x) } = \frac{ f(x + \sigma_x) - f(x - \sigma_x) }{ 2 }
$$

### Number of significant digits

In a result it refers to the number of digits that are relevant. The digits may occur after a string of zeroes.
