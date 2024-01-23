#install tidyverse
install.packages("tidyverse")
#load it in
library(tidyverse)

#solve Project Euler #1
running_sum <- 0
for (i in 1:999) {
  if (i%%3 == 0 | i%%5 == 0) {
    running_sum <- running_sum + i
  }
}
running_sum

#solve Project Euler #2
fibonacci_numbers <- c(1, 2, 3)
num <- 3
index <- 3

while (num < 4000000) {
  num <- num + fibonacci_numbers[index-1]
  index <- index + 1
  if (num < 4000000) {
    fibonacci_numbers <- c(fibonacci_numbers, num)
  }
}

running_sum2 <- 0
for (x in 1:length(fibonacci_numbers)){
  if (fibonacci_numbers[x]%%2 == 0){
    running_sum2 <- running_sum2 + fibonacci_numbers[x]
  }
}
running_sum2

#solve Project Euler #3
factors_list <- c()
number <- 600851475143

for (i in 2:10000){
  if (number%%i == 0){
    factors_list <- c(factors_list, number)
  }
  while (number%%i == 0){
    number <- number / i
  }
}

print(factors_list[length(factors_list)])
