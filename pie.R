x <- c(10, 20, 30, 40)
mylabel <- c("Polish", "English", "French", "German")
colors <- c("blue", "yellow", "green", "orange")
pie(x, label=mylabel, main="Languages", col=colors, init.angle=90)
legend("bottomright", mylabel, fill=colors)


