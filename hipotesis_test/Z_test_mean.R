# Mean Hipotesis tests for Normal distributed population

# Example
# It is known that the duration of travels in a certain city is normally
# distributed with a mean of 300 and a standard deviation of 30 minutes.
# A sample of 10 travels is taken and the average duration is 314 minutes.
# Does this sample provide enough evidence that the average
# duration was right? Use a significance level (alpha) of 0.1.

# Given values
mu <- 300 # population mean
sigma <- 30 # population standard deviation
n <- 10 # sample size
x_bar <- 314 # sample mean
alpha <- 0.1 # significance level

# Compute the z-score (One-Sample Z-Tests)
z <- (x_bar - mu) / (sigma / sqrt(n))

# Compute the p-value (two-tailed test)
p_value <- 2 * (1 - pnorm(abs(z)))

# if it was a one-tailed test, use:
# p_value <- 1 - pnorm(z)
# if it was a left-tailed test, use:
# p_value <- pnorm(z)

# Check if the null hypothesis can be rejected
if (p_value < alpha) {
    print("Reject the null hypothesis:\n")
} else {
    print("Do not reject the null hypothesis\n")
}

# Output
print(z)
print(p_value)
