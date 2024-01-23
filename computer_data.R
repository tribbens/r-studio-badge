#load data
computer_data1 <- read.csv("2021-06-15-survey.csv")
computer_data2 <- read.csv("2022-06-14-survey.csv")
computer_data3 <- read.csv("2023-06-13-survey.csv")

#add empty column to first dataset
computer_data1$GPU.CUDA.Number.of.Cores..int. = NA

#rename columns to make things easier
colnames(computer_data1) <- c('Timestamp', 'OS', 'CPU Cycle', 'CPU Cores', 'RAM', 'HD Size', 'GPU Desc', 'GPU Cores')
colnames(computer_data2) <- c('Timestamp', 'OS', 'CPU Cycle', 'CPU Cores', 'RAM', 'HD Size', 'GPU Desc', 'GPU Cores')
colnames(computer_data3) <- c('Timestamp', 'OS', 'CPU Cycle', 'CPU Cores', 'RAM', 'HD Size', 'GPU Desc', 'GPU Cores')

#combine datasets
comb_data <- rbind(computer_data1, computer_data2)
comb_data <- rbind(comb_data, computer_data3)

#histogram of CPU Cycle rates
ggplot(comb_data, aes(x=comb_data$`CPU Cycle`)) + geom_histogram(breaks=c(0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4))

#histogram of RAM
ggplot(comb_data, aes(x=comb_data$RAM)) + geom_histogram(breaks=c(0, 4, 8, 12, 16, 20, 24, 28, 32, 36))

#histogram of HD Size
ggplot(comb_data, aes(x=comb_data$`HD Size`)) + geom_histogram(breaks=c(0, 128, 256, 512, 1024, 2048, 4096))

#histogram of CPU Cores
ggplot(comb_data, aes(x=comb_data$`CPU Cores`)) + geom_histogram(breaks=c(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20))

#histogram of GPU Cores
ggplot(comb_data, aes(x=comb_data$`GPU Cores`)) + geom_histogram(breaks=c(0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20))

#barplot of operating system
ggplot(comb_data, aes(x=comb_data$OS)) + geom_bar()


