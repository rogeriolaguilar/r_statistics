# Example 1
# Measure the effect of alcohol on the same group of people. Higher score is better.
# H0: mu_water = mu_alcohol
# H1: mu_water != mu_alcohol

n <- 10

water <- c(16, 15, 11, 20, 19, 14, 13, 15, 14, 16)
alcohol <- c(13, 13, 12, 16, 16, 11, 10, 15, 9, 16)
alpha <- 0.01
confidence_level <- 1 - alpha

mean_water <- mean(water)
print(paste("Mean of water:", mean_water))

mean_alcohol <- mean(alcohol)
print(paste("Mean of alcohol:", mean_alcohol))


# check if the variances are equal
var_test <- var.test(water, alcohol, ratio = 1, alternative = "two.sided", conf.level = confidence_level)

print("#### Var Test")
print(var_test)


var_equal <- var_test$p.value > alpha
print(paste(">>>>>> Variances are equal:", var_equal))


result <- t.test(
    x = water,
    y = alcohol,
    alternative = "two.sided",
    paired = TRUE, # False if the samples are independent
    var.equal = var_equal, # False if the variances are not equal
    conf.level = confidence_level
)

print("#### Result")
print(result)


if (result$p.value < alpha) {
    print(paste("Reject the null hypothesis: there is a difference {p-value =", result$p.value, "}"))
} else {
    print(paste("Fail to reject the null hypothesis: there is no significant difference {p-value =", result$p.value, "}"))
}
