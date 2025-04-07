library(samplingbook)

# Sample size for estimating a proportion
# e: margin of error
# P: estimated proportion
# N: population size
# level: confidence level

e <- 0.025
P <- 0.5
N <- Inf
level <- 0.90

result <- sample.size.prop(e, P, N, level)
print(result)
