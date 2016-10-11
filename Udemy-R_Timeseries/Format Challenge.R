#Challenge - time series formatting
#Creating a ts object
#Set seed
set.seed(4)
#Create cumulative sum of normal distribution
x = cumsum(rnorm(n = 450))
#Add a time component starting November 1914
xt = ts(x, start = c(1914, 11), frequency = 12)
#Plot data
plot(xt)
#Extra - use lattice package
library(lattice)
xyplot.ts(xt)

