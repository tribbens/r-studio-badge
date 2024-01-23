library(tidyverse)
library(ggplot2)

#normal distribution
set.seed(155)
norm_dist <- rnorm(1000)
ggplot() + geom_histogram(aes(norm_dist))

#binomial distribution
set.seed(178)
binom_dist <- rbinom(1000, 100, 0.7)
ggplot() + geom_histogram(aes(binom_dist))

#uniform distribution
set.seed(165)
unif_dist <- runif(1000, min=0, max=1)
ggplot() + geom_histogram(aes(unif_dist), bins=20)


#convergence of Binomial and Normal distribution for large N
#100
norm_dist <- rnorm(100)
ggplot() + geom_histogram(aes(norm_dist))
binom_dist <- rbinom(100, 10, 0.7)
ggplot() + geom_histogram(aes(binom_dist))
#1000
norm_dist <- rnorm(1000)
ggplot() + geom_histogram(aes(norm_dist), bins=100)
binom_dist <- rbinom(1000, 10, 0.7)
ggplot() + geom_histogram(aes(binom_dist), bins=100)
#100000
norm_dist <- rnorm(100000)
ggplot() + geom_histogram(aes(norm_dist), bins=1000)
binom_dist <- rbinom(100000, 100000, 0.7)
ggplot() + geom_histogram(aes(binom_dist), bins=1000)
