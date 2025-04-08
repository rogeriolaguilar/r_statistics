# vector of observed values

# To compare the means of two samples using the T-test the samples must be normally distributed.

alpha <- 0.05 # significance level

# generate two samples
x <- c(12, 8, 15, 13, 10, 12, 14, 11, 12, 13, 15, 19, 15, 12, 13, 16, 15)
y <- c(12, 16, 24, 18, 20, 22, 14, 15, 13, 17, 19, 10, 23, 25, 26, 27, 28)

# check if the samples are normally distributed
shapiro_test_x <- shapiro.test(x)
shapiro_test_y <- shapiro.test(y)

print("#### Shapiro for X")
print(shapiro_test_x)
print("#### Shapiro for Y")
print(shapiro_test_y)

#Results
# [1] "Shapiro for X"
# data:  x
# W = 0.96574, p-value = 0.7405

# [1] "Shapiro for Y"
# data:  y
# W = 0.96135, p-value = 0.6569

# # Interpretation
# # The p-value is greater than 0.05, so we do not reject the null hypothesis.
# # The data follows a normal distribution.


print("#### Check if the variances are equal")

var_test <- var.test(x, y, ratio = 1, alternative = "two.sided", conf.level = alpha)
print(var_test)

# Results
# F = 0.20617, num df = 16, denom df = 16, p-value = 0.002985

# # Interpretation
# # The p-value is less than 0.05, so we reject the null hypothesis.
# # The variances are not equal.


result <- t.test(
                x, 
                y,
                alternative=c("two.sided"),
                paired = FALSE, # False if the samples are independent
                var.equal = FALSE, # False if the variances are not equal
                conf.level = conf_level
)
print(result)

# Results
# Welch Two Sample t-test
# data:  x and y
# t = -12.169, df = 22.328, p-value = 1
# alternative hypothesis: true difference in means is greater than 12
# 95 percent confidence interval:
#  -8.67258      Inf
# sample estimates:
# mean of x mean of y 
#  13.23529  19.35294 

