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
  model <- svm(x,y)
  return(model)
}

initSVM = function(name)
{
  library("e1071")
  dataCSV <- importCSV(name)
  summary(dataCSV)
  model <- createSVM(dataCSV)
  return(model)
}
