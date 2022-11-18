library(treemapify)
library(ggplot2)
library(dplyr)
data(Marriage, package="mosaicData")
plotdata <- Marriage %>% count(officialTitle)
ggplot(plotdata, aes(fill=officialTitle, area=n, label=officialTitle)) + geom_treemap() + geom_treemap_text(color="white", place="centre") + labs(title="Marriages by officiate") + theme(legend.position="none")

