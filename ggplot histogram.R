library(ggplot2)
data(Marriage, package="mosaicData")
ggplot(Marriage, aes(x = age)) + geom_histogram()

