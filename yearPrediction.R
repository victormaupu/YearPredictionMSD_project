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

test_data = function(model,x) {
  a <- subset(x,select=-V1)
  b <- subset(x,select=V1)
  p <- predict(model,a)
  cpt <- 0
  res <- 0
  for (i in 1:(dim(b)[1]))
    {
      cpt <- cpt + 1
      print(round(p[i],digits=0))
      print(b[i])
      if (b[i] == round(p[i],digits=0))
      {

        res <- res + 1
      }
    }
  print(res)
  print(cpt)
}
