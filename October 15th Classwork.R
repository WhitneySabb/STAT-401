# Author: Sabb, Whitney Date: October 15, 2021, Purpose: Classwork

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131) 
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48) 

relation <- lm(y~x) 

print(relation)

# y/Happyness = -38.4551 + (0.6746 * x/time)
 