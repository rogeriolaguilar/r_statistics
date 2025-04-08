# We want to compare the number of successes in two groups.
# We want to test if the proportion of successes in group A is different
# from the proportion of successes in group B using a significance level of 0.01.

# H0: p1 = p2 (the proportions are equal)
# H1: p1 != p2 (the proportions are not equal)

alpha <- 0.01 # significance level
confidence_level <- 1 - alpha # confidence level

x <- c(26, 54) # number of successes in each group
n <- c(40, 60) # number of trials in each group

result<-prop.test(
    x, # number of successes in each group
    n, # number of trials in each group
    alternative = "two.sided", # alternative hypothesis
    conf.level = confidence_level, # confidence level
    correct = FALSE # Yates' continuity correction
)

print(result)

# Example of results
#         2-sample test for equality of proportions without continuity correction

# data:  x out of n
# X-squared = 9.375, df = 1, p-value = 0.0022
# alternative hypothesis: two.sided
# 99 percent confidence interval:
#  -0.46837655 -0.03162345
# sample estimates:
# prop 1 prop 2 
#   0.65   0.90 

# Interpretation
# The p-value is less than the significance level (0.0022 < 0.01),
# so we reject the null hypothesis, so the two groups are different.
# The confidence interval for the difference in proportions is (-0.4684, -0.0316),
# which means that this difference can vary from 8,38% to 46,84%.