#MTS challenge

#Convert EuStockMarkets vector into dataframe
market <- data.frame(EuStockMarkets)
str(market)
#Summary of dataset
summary(market)
#Get class of dataset
class(market)

#Feature engineering
#DAX - SMI
new <- market$DAX - market$SMI
#Plot new variable
plot(new, type = 'l')
par(new = T)
plot(market$DAX, axes = F, ylab = "", col = "green", type = 'l')
par(new = T)
plot(market$SMI, axes = F, ylab = "", col = "red", type = 'l')
par(new = F)


