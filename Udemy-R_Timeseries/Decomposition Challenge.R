#Decomposing challenge

#Air passenget dataset
AirData <- AirPassengers
#Decompose data
decom <- decompose(AirData)
#Plot decomposed data
plot(decom)
#Add trend and seasonality together
mydata <- decom$seasonal + decom$trend
#Plot trend and seasality data
plot(mydata)