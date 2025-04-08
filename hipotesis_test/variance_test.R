
# Variance Test: Test F

# Example
# We want to verify if two machines produce pieces with diameters with the same variance.
# Use a significance level (alpha) of 0.05

# null hypothesis (H0): sigma1^2 = sigma2^2
# alternative hypothesis (H1): sigma1^2 != sigma2^2

maq_a <- c(145, 142, 136, 131, 131, 135, 138, 140, 139, 141)
maq_b <- c(140, 138, 135, 132, 130, 134, 137, 139, 141, 143)


x = maq_a
y = maq_b
alpha = 0.05 # significance level

result <- var.test(x, y, ratio = 1, alternative = "two.sided", conf.level = alpha)
print(result)   

# Example of results
#         F test to compare two variances

# data:  x and y
# F = 1.24, num df = 9, denom df = 9, p-value = 0.7538
# alternative hypothesis: true ratio of variances is not equal to 1
# 5 percent confidence interval:
#  1.187857 1.294486
# sample estimates:
# ratio of variances 
#           1.240026 

# Interpretation

# F statistic is 1.24, which means that the variance of the first sample
# is 1.24 times the variance of the second sample.

# The p-value is greater than the significance level (0.7538 > 0.05),
# so we do not reject the null hypothesis.


# df is the degrees of freedom for the numerator and denominator.

