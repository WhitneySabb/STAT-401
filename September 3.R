# Author: Whitney Sabb, Date: Sept 3 2021, Purpose: Perform ANNOVA on Sample Data

library(dplyr) 

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

glimpse(df)

levels(df$poison) 

df %>% group_by(poison) %>% summarise( count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE) )

install.packages("ggplot2")

library(ggplot2)

ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

anova_one_way <- aov(time~poison, data = df)

summary(anova_one_way)

Critical F-value:	3.20431729
Signifcant Difference

