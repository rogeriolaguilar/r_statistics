# vector of observed values

# Two agencies are compared: CG and BM
# The average account balance of CG is 1025 and the average account balance of BM is 910.
# The sample size of CG is 28 and the sample size of BM is 22.
# The standard deviation of CG is 150 and the standard deviation of BM is 125.

# Does the average account balance of CG differ from the average account balance of BM?

# CG vs BM
means <- c(1025, 910)
n <- c(28, 22)
standard_deviations <- c(150, 125)

# H0: mu1 = mu2 (the means are equal)
# H1: mu1 != mu2 (the means are not equal)
alpha <- 0.05 # significance level
confidence_level <- 1 - alpha # confidence level
x <- c(1025, 910) # means
n <- c(28, 22) # sample sizes
standard_deviations <- c(150, 125) # standard deviations

# Calculate the t-statistic
t_statistic <- (means[1] - means[2]) / sqrt((standard_deviations[1]^2 / n[1]) + (standard_deviations[2]^2 / n[2]))

print("T-statistic:")
print(t_statistic)

# Calculate the degrees of freedom
df <- n[1] + n[2] - 2
print("Degrees of freedom:")
print(df)


# Calculate the critical t-value
critical_t_value <- qt(1 - alpha / 2, df)

# Calculate the p-value
p_value <- 2 * (1 - pt(abs(t_statistic), df))
# if it was a one-tailed test, use:
# p_value <- 1 - pt(t_statistic, df)
# if it was a left-tailed test, use:
# p_value <- pt(t_statistic, df)


# Print the results
cat("p-value:", p_value, "\n")

if (p_value < alpha) {
    cat("Reject the null hypothesis: The average account balance of CG differs from the average account balance of BM.\n")
} else {
    cat("Do not reject the null hypothesis: The average account balance of CG does not differ from the average account balance of BM.\n")
}
