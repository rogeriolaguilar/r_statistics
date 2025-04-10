# Check if there are differences in the proportion of
# prepared students when compared to unprepared students

alpha <- 0.1
confidence_level <- 1 - alpha

approvals <- c(34, 53)
n <- c(140, 230)


# H0: p_prepared = p_unprepared
# H1: p_prepared != p_unprepared


print("Proportions (compare to what is shown in the result of prop.test):")
print(paste("Proportion of prepared students:", approvals[1] / n[1]))
print(paste("Proportion of unprepared students:", approvals[2] / n[2]))

# Calculate the p-value
result <- prop.test(
    x = approvals,
    n = n,
    alternative = "two.sided", # alternative hypothesis
    # conf.level = confidence_level, # confidence level
    correct = FALSE # Yates' continuity correction
)


print("#### Result:")
print(result)

if (result$p.value < alpha) {
    print("Reject the null hypothesis")
} else {
    print("Fail to reject the null hypothesis")
}

print("#### Z test (manual calculation)")

# Sample proportions
p1 <- approvals[1] / n[1]
p2 <- approvals[2] / n[2]

# Pooled proportion
p_pooled <- (approvals[1] + approvals[2]) / (n[1] + n[2])

# Standard error
se <- sqrt(p_pooled * (1 - p_pooled) * (1 / n[1] + 1 / n[2]))

# Z statistic
z <- (p1 - p2) / se
print(paste("Z statistic:", z))

# Two-tailed p-value
p_value <- 2 * (1 - pnorm(abs(z)))
print(paste("p-value:", p_value))
