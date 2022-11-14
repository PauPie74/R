library(ggplot2)
library(carData)
data(Salaries, package="carData")
ggplot(Salaries, aes(x = yrs.since.phd, y = salary, color = rank, size = yrs.service)) +
geom_point(alpha = .6) + labs(title = "Academic salary by rank, years of service, and years
since degree")

