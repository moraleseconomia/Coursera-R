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
    
    
"~/GitHub/Coursera-R/R-programming/"
    
  
  
      
############################################################################      
###################      Primera tarea           ###########################
############################################################################
      
pollutantmean <- function(directory, pollutant, id) {
         datos <- data.frame()
       for(i in id) {
        nombre = paste(formatC(i, width=3, flag = "0"), ".csv", sep="")
        locarchivo = paste("~/Coursera-R/R-programming/",directory, "/", nombre, sep = "")
        dato <- rbind(datos[[pollutant]], read.csv(locarchivo[id]))
      }
      mean(dato, na.rm=TRUE)
      }
    
#############################################################################
#############################################################################
pollutantmean("specdata", "sulfate", id=1:10)
#############################################################################    
pollutantmean("specdata", "nitrate", id=70:72)
##############################################################################    
pollutantmean("specdata", "nitrate", id=23)
##############################################################################    
    
    
    pollutantmean <- function(directory, pollutant, id) {
      dato = c()
      for (i in id) {
      nombre = paste(formatC(i, width=3, flag = "0"), ".csv", sep="")
      locarchivo = paste("~/Coursera-R/R-programming/",directory, "/", nombre, sep = "")
        datos <- read.csv(locarchivo)
       dato <- c(dato, datos[[pollutant]])
      }
      return(mean(dato, na.rm=TRUE))
    }
    
    
    
    
    
#############################################################################################################
    
    
    
    
    
    
    
    
    

complete <- function(directory, pollutant, id=1:332) {
 data = numeric()
    for (i in id) {
      newRead = read.csv(paste(directory, "/", formatC(i, width = 3, flag = "0"), 
                               ".csv", sep = ""))
      data = c(data, newRead[[pollutant]])
                   }
    return(mean(data, na.rm = TRUE)) 
 }    
    
        
    
    
    
######################################################################################################
    
    complete <- function(directory, id=1:332) {
      dato = data.frame()
      for (i in id) {
        nombre = paste(formatC(i, width=3, flag = "0"), ".csv", sep="")
        locarchivo = paste("~/Coursera-R/R-programming/",directory, "/", nombre, sep = "")
        datos <- read.csv(locarchivo)
        dato<-rbind(dato, c(i,sum(complete.cases(datos))))
      }
      colnames(dato)<-c("id", "nobs")
      return(dato)
      }
    
    
###################################################################################################
    
 complete("specdata", 1)   
    
    