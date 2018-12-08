importCSV = function(name)
{
  importCSV <- read.csv(name,sep=",",header=FALSE,dec=".")
  dataCSV <- as.matrix(importCSV)
  return(dataCSV)
}
