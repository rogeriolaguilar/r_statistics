# A researcher wants to test if the average weight loss of a group of
# people is greater than 12 kg.
# He want it to be 95% sure of the result (5% of significance level).

# null hypothesis (H0): <= 12
# alternative hypothesis (H1): > 12

x <- c(12, 8, 15, 13, 10, 12, 14, 11, 12, 13, 15, 19, 15, 12, 13, 16, 15) # vetor de valores observados na amostra
alternative <- c("greater") # "two.sided", "less", "greater"
mu <- 12 # hiposis value
conf_level <- 0.95

t.test(x, alternative = alternative, mu = mu, conf.level = conf_level)

# Example of results
#         One Sample t-test
# data:  x
# t = 2.0068, df = 16, p-value = 0.03099
# alternative hypothesis: true mean is greater than 12
# 95 percent confidence interval:
#  12.16063      Inf
# sample estimates:
# mean of x
#  13.23529
