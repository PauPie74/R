library(ggplot2)
library(carData)
data(Salaries, package="carData")
ggplot(Salaries, aes(x = rank, y = salary)) + geom_boxplot() + labs(title = "Salary
distribution by rank")

