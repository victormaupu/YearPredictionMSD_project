importCSV = function(name)
{
  importCSV <- read.csv(name,sep=",",header=FALSE,dec=".")
  dataCSV <- as.matrix(importCSV)
  return(dataCSV)
}

createSVM = function(dataCSV)
{
  x <- subset(dataCSV,select=-V1)
  y <- subset(dataCSV,select=V1)
  model <- svm(x,y,cost=10,gamma=0.5)
  return(model)
}
