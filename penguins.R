> library(ggplot2)
> library(palmerpenguins)
> ggplot2(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
Error in ggplot2(data = penguins) : could not find function "ggplot2"
> ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
Warning message:
Removed 2 rows containing missing values (`geom_point()`). 