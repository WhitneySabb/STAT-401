# Author: Whitney Sabb, Date: Aug 20, 2021, Purpose: Calculate T Test

x = rnorm(10)
y = rnorm(10)

pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

#Calculate T-test from following function:
ttest = t.test(x,y)

### Following is the T Test Run ###
Welch Two Sample t-test

data:  x and y
t = 1.0243, df = 16.406, p-value = 0.3206
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.5541748  1.5943879
sample estimates:
 mean of x  mean of y 
 0.3060594 -0.2140472 

###############