library(tidyverse)

set.seed(155)
binom_dist <- rnorm(1000)

ggplot(binom_dist)
re