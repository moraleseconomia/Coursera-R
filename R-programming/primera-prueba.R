#Ejercicio de primera prueba de r-programming

x <- 4
class()
class(4)

x <- c(4, "a", TRUE)
class(x)

x <- c(1,3,5)
y <- c(3,2,10)
rbind(x,y)

x <- list(2, "a", "b", TRUE)
x[[1]]


x <- 1:4
y <- 2:3
x + y

x <- c(17, 14, 4, 5, 13, 12, 10)
x[x>10]<-4
x


hw1_data <- read.csv("~/R-programming/hw1_data.csv")
#Nombres de columnas
colnames(hw1_data)

#Extraer las primeras dos filas
hw1_data[1:2,]

#Número de observaciones
nrow(hw1_data) #Esta es
ncol(hw1_data)


#Extraer las dos últimas filas
hw1_data[(nrow(hw1_data)-1):nrow(hw1_data),]

#Cuál es el valor de Ozono en la fila 47
hw1_data[47,1]
hw1_data$Ozone[[47]]

#Cuántos valores perdidos están en Ozone?
summary(is.na(hw1_data$Ozone))
summary(hw1_data$Ozone)


#Promedio de Ozone
mean(hw1_data$Ozone, na.rm=TRUE)

#Subset
#El promedio de Solar.R cuando los valores de Ozone están arriba de 31 y Temp arriba de 90
mean(hw1_data$Solar.R[hw1_data$Ozone>31 & hw1_data$Temp>90], na.rm=TRUE)


#Cuál es la media de Temp cuando Month es igual a 6?
mean(hw1_data$Temp[hw1_data$Month==6], na.rm=TRUE)

#Cuál es el máximo de Ozone en el mes de Mayo? Month = 5
max(hw1_data$Ozone[hw1_data$Month==5], na.rm=TRUE)


### Páginas claves
# https://gist.github.com/kfeoktistoff/437988fedff2b41b159f
# https://quip.com/Dn0NAOYhL54b











