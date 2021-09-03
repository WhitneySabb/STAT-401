# Author: Whitney Sabb, Date: Sept 1 2021, Purpose: Calculate ANNOVA on Sample Data

library(dplyr) 

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE))

glimpse(df)

# Check the levels of variable "poison"

levels(df$poison) 

df %>% group_by(poison) %>% summarise( count_poison = n(), mean_time = mean(time, na.rm = TRUE), sd_time = sd(time, na.rm = TRUE) )