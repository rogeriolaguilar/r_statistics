# Classify airports based on how well they are being evaluated by passengers
# If the mean score is greater than 7, the airport is classified as high level
# Check if the airport can be classified as high level

n <- 27
mean <- 7.25
sd <- 1.052
confidence_level <- 0.95
alpha <- 1 - confidence_level


# H0: mu_londres <= 7
# H1: mu_londres > 7

# Calculate the t-value
t_value <- (mean - 7) / (sd / sqrt(n))

# Calculate the p-value (one-tailed test to the right)
# because we checking if H1 is true
p_value <- 1 - pt(t_value, df = n - 1)
print(paste("t-value:", t_value))
print(paste("p-value:", p_value))

if (p_value < alpha) {
    print("Reject the null hypothesis: The airport is classified as high level")
} else {
    print("Do not reject the null hypothesis: The airport is not classified as high level")
}
