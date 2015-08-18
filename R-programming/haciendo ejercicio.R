pollutants <- function(directory, pollutant, id) {
  fileName <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")
  filePath <- paste(directory, "/", fileName, sep = "")
  frame <- read.csv(filePath)
  pollutantData <- frame[[pollutant]]
  pollutantData[!is.na(pollutantData)]
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
  pollutantLists <- sapply(id, function(id) pollutants(directory, pollutant, id))
  pollutants <- unlist(pollutantLists)
  mean(pollutants)
}







pollutants <- function(directory, pollutant, id) {
  nombre = paste(formatC(id, width=3, flag = "0"), ".csv", sep="")
  locarchivo = paste("~/GitHub/Coursera-R/R-programming/",directory, "/", nombre, sep = "")
  leer = read.csv(locarchivo)
  pollutantData <- leer[[pollutant]]
  pollutantData[!is.na(pollutantData)]
}
pollutantmean <- function(directory, pollutant, id = 1:332) {
  pollutantLists <- sapply(id, function(id) pollutants(directory, pollutant, id))
  pollutants <- unlist(pollutantLists)
  mean(pollutants)
}
  


pollutantmean("specdata", "sulfate", 1:10)



pollutants <- function(directory, pollutant, id) {
  nombre = paste(formatC(id, width=3, flag = "0"), ".csv", sep="")
  locarchivo = paste("~/GitHub/Coursera-R/R-programming/",directory, "/", nombre, sep = "")
  leer = read.csv(locarchivo)
  for(i in id) {
    pollutant = read.csv(locarchivo[i])
  }
pollutantmean <- function(directory, pollutant, id = 1:332) {
  pollutantLists <- sapply(id, function(id) pollutants(directory, pollutant, id))
  pollutants <- unlist(pollutantLists)
  mean(pollutants) 
}
}




pollutantmean <- function(directory, pollutant, id) {
  directory <- "~/GitHub/Coursera-R/R-programming"
}


dato <- data.frame()
for(i in id) {
  dato <- rbind(dato, read.csv(locarchivo[i]))
}







summary(dato, na.rm=TRUE)






summary(merge(read.csv(locarchivo[1:2])))



pollutant = pollutant[!is.na(pollutant)]


http://www.tech.theplayhub.com/reading_multiple_files_and_calculating_mean_based_on_user_input/
  


  pollutants <- function(directory, pollutant, id) {
    nombre = paste(formatC(id, width=3, flag = "0"), ".csv", sep="")
    url = "https://raw.githubusercontent.com/usuariosrnicaragua/Coursera-R/master/R-programming/"
    locarchivo = paste(url, "specdata", "/", nombre, sep = "")
    leer = read.csv(locarchivo)
  
    
    download.file(locarchivo, destfile=nombre, method='curl')

    
    http://xmuxiaomo.github.io/2015/06/10/R-Programming-Assignment-1/
    
    

  
  
      
      
############################################Primera tarea###################
############################################################################
      
pollutants <- function(directory, pollutant, id) {
  nombre = paste(formatC(id, width=3, flag = "0"), ".csv", sep="")
  locarchivo = paste(directory, "/", nombre, sep = "")
  dato <- data.frame()
  for(i in id) {
    dato <- rbind(dato, read.csv(locarchivo[i]))
  }
  mean(dato[[pollutant]], na.rm=TRUE)
}
#############################################################################
#############################################################################
    
"~/GitHub/Coursera-R/R-programming/"
##############################################################################    
    
    
    
    
    
    
    
    