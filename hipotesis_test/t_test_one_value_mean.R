# We have a sample of 27 observations with an average of 7.25 and a standard deviation of 1.052.
# We want to test if the average is greater than 7.
# We will use a one-tailed t-test to test the hypothesis where:
# H0: mu <= 7 (the average is less than or equal to 7)
# H1: mu > 7 (the average is greater than 7)

# Given values
estimated_mean <- 7.25
sd <- 1.052
n <- 27
mean_hipothesis <- 7
alpha <- 0.05

# Compute the t-score (One-Sample T-Tests)
t_score <- (estimated_mean - mean_hipothesis) / (sd / sqrt(n))

# Compute the p-value (one-tailed test)
p_value <- 1 - pt(t_score, df = n - 1)

# Check if the null hypothesis can be rejected
if (p_value < alpha) {
    print("Reject the null hypothesis:\n")
} else {
    print("Do not reject the null hypothesis\n")
}
