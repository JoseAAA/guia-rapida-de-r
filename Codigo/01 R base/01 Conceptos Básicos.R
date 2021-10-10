###########################################################################
#                                                                         #
#                           Conceptos Básicos                             #
#          En esta sección se hablara de los conceptos básicos            #
#             que se tiene que saber para trabajar con R                  #
#                                                                         #
###########################################################################

# Variables ---------------------------------------------------------------
a <- 10

# Crear dos variables llamadas edad1, edad2 y edad3
# 10,20,50
edad1 <- 10
edad2 <- 20
edad3 <- 50

# Funciones ---------------------------------------------------------------
mean(a)
median(a)
quantile(a)
var(a)
sd(a)

RI <- function(x){
  return(quantile(x, probs = 0.75) - quantile(x, probs = 0.25))
}

CV <- function(x){
  return(sd(x)/mean(x))
}

# A partir de las variables edad1, edad2 y edad3, 
# calcular las funciones anteriores
mean(c(edad1,edad2,edad3))
median(c(edad1,edad2,edad3))
quantile(c(edad1,edad2,edad3))
var(c(edad1,edad2,edad3))
sd(c(edad1,edad2,edad3))
RI(c(edad1,edad2,edad3))
CV(c(edad1,edad2,edad3))

# Crea una variable "r" (radio) y una función "area" 
# (area de un circulo cuyo radio es "r")
r <- 10
a <- function(r){
  return(pi*r*r)
}
a(r)

# Documentación de las funciones ------------------------------------------
?median
help(mean)
help(package = "stats")

# Acceder a la documentación de la función "Var"
help(var)

# Directorio de Trabajo ---------------------------------------------------
getwd()
setwd("C:/Users/jalarcon/OneDrive - Camposol S.A/Programas/R/guia rapida de r/")
list.files()
list.dirs()
ls()

# Paquetes ----------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Instalar el paquete "leaflet" y acceder a la documentación
install.packages("leaflet")
help(package = "leaflet")

# Script ------------------------------------------------------------------
source("Codigo/01 R base/fun.R")

resta(1,2)
suma(1,2)

# Crear la función multiplicación y división en el script "fun2"
# cargar el archivo y usar las dos funciones (a = 10, b = 0)


