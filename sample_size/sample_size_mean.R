library(samplingbook)

# Sample size for estimating a mean
# e: margin of error
# S: standard deviation
# N: population size
# level: confidence level

S <- sqrt(0.1764)
e <- 0.05
N <- Inf
level <- 0.99


result <- sample.size.mean(e, S, N, level)

print(result)
