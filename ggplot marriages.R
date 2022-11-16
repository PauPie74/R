library(ggplot2)
data(Marriage, package="mosaicData")
ggplot(Marriage, aes(x = race)) + geom_bar()
ggplot(Marriage, aes(x = race)) + geom_bar(fill="cornflowerblue", color="black") + labs(x="Race", y="Frequency", title="Participant by race")

