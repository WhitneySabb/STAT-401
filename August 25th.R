# Author: Whitney Sabb, Date: Aug 25, 2021, Purpose: Calculate the correlation coefficient value

# Loading library
library("ggpubr")

# Load Sample Data
my_data <- mtcars

# Correlation Value and Placing
ggscatter(my_data, x = "mpg", y = "wt" , add = "reg.line",conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

# Generating a correlation value without plotting
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

################
Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 
###############