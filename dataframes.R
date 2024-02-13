> library(ggplot2)
> library(tidyverse)
> ggplot(data = diamonds, aes(x = carat, y = price)) +
+     geom_point()
> ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
+     geom_point()
> ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
+     geom_point() +
+     facet_wrap(~cut)
> mdy(02272027)
[1] "2027-02-27"
> mdy('April 10, 2019')
[1] "2019-04-10"
> names <- c("Valentino", "Mabel", "Marinette", "Orel")
> age <- c(30, 10, 13, 12)
> people <- data.frame(names, age)
> head(people)
      names age
1 Valentino  30
2     Mabel  10
3 Marinette  13
4      Orel  12
> str(people)
'data.frame':	4 obs. of  2 variables:
 $ names: chr  "Valentino" "Mabel" "Marinette" "Orel"
 $ age  : num  30 10 13 12
> glimpse(people)
Rows: 4
Columns: 2
$ names <chr> "Valentino", "Mabel", "Marinette", "Orel"
$ age   <dbl> 30, 10, 13, 12
> colnames(people)
[1] "names" "age"  
> mutate(people, age_in_20 = age + 20)
      names age age_in_20
1 Valentino  30        50
2     Mabel  10        30
3 Marinette  13        33
4      Orel  12        32
> fruit <- c('watermelon', 'mango', 'strawberry')
> rank <- c(1, 2, 3)
> fruits <- data.frame(fruit, rank)
> head(fruits)
       fruit rank
1 watermelon    1
2      mango    2
3 strawberry    3
> str(fruits)
'data.frame':	3 obs. of  2 variables:
 $ fruit: chr  "watermelon" "mango" "strawberry"
 $ rank : num  1 2 3
> glimpse(fruit)
 chr [1:3] "watermelon" "mango" "strawberry"
> glimpse(fruits)
Rows: 3
Columns: 2
$ fruit <chr> "watermelon", "mango", "strawberry"
$ rank  <dbl> 1, 2, 3
> colnames(fruits)
[1] "fruit" "rank" 
> data(diamonds)
> View(diamonds)
> as_tibble(diamonds)
# A tibble: 53,940 × 10
   carat cut       color clarity depth table price     x     y     z
   <dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
 1  0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
 2  0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
 3  0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
 4  0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
 5  0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
 6  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
 7  0.24 Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
 8  0.26 Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
 9  0.22 Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
10  0.23 Very Good H     VS1      59.4    61   338  4     4.05  2.39
# ℹ 53,930 more rows
# ℹ Use `print(n = ...)` to see more rows