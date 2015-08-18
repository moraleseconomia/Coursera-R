complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  dato = data.frame()
  for (i in id) {
    nombre = paste(formatC(i, width=3, flag = "0"), ".csv", sep="")
    locarchivo = paste(directory, "/", nombre, sep = "")
    datos <- read.csv(locarchivo)
    dato<-rbind(dato, c(i,sum(complete.cases(datos))))
  }
  colnames(dato)<-c("id", "nobs")
  return(dato)
  
}

complete("specdata", 1)

complete("specdata", c(2, 4, 8, 10, 12))

complete("specdata", 30:25)

complete("specdata", 3)





