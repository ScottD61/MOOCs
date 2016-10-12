#Time series challenge

#Import forecast library
library(forecast)
#Use airpassengers dataset
AirData <- AirPassengers
#Plot with seasonplot function
seasonplot(AirData, year.labels = TRUE, col = c(2, 4), labelgap = 0.35,
           type = "l", cex = 0.75, main = "Seasonal plot of dataset AirPassengers")