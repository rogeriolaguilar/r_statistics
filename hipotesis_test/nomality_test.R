# Test if the data follows a normal distribution (Normality test)

# We want to check the fat percentage of food and see if it follows a normal distribution.

fat_percentage <- c(12.5, 13.2, 14.1, 11.8, 12.9, 13.5, 14.0, 12.7, 13.3, 12.8)

# Shapiro-Wilk normality test
shapiro_test <- shapiro.test(fat_percentage)
print(shapiro_test)


# H0: The data follows a normal distribution
# H1: The data does not follow a normal distribution
# alpha = 0.05 # significance level

# Example:
# data:  fat_percentage
# W = 0.97221, p-value = 0.9106

# Interpretation:
# p-value: if you reject the null hypothesis, the probability of making a type I error is 0.9106
# Since the p-value is greater than 0.05, we do not reject the null hypothesis.

# W is the test statistic of the Shapiro-Wilk test.
# The closer W is to 1, the more likely the data is normally distributed.