###########################################################################
#                                                                         #
#                           Conceptos Básicos                             #
#          En esta sección se hablara de los conceptos básicos            #
#             que se tiene que saber para trabajar con R                  #
#                                                                         #
###########################################################################

# Variables ---------------------------------------------------------------
a <- 1

# Crear dos variables llamadas edad1, edad2 y edad3

# Funciones ---------------------------------------------------------------
mean(a)
median(a)
quantile(a,)
var(a)
sd(a)

RI <- function(x){
  return(quantile(x, probs = 0.75) - quantile(x, probs = 0.25))
}

# A partir de las variables edad1, edad2 y edad3, 
# calcular las funciones anteriores

# Crea una variable "r" (radio) y una función "area" 
# (area de un circulo cuyo radio es "r")

# Documentación de las funciones ------------------------------------------
?mean
help(mean)
help(package = "stats")

# Acceder a la documentación de la función "Var"


# Directorio de Trabajo ---------------------------------------------------
getwd()
setwd("C:/Users/jalarcon/OneDrive - Camposol S.A/Programas/")
list.files()
list.dirs()
ls()

# Obtener el directorio de trabajo

# Obtener los objetos que se encuentran en su entorno de trabajo


# Paquetes ----------------------------------------------------------------
install.packages("tidyverse")
library(tidyverse)

# Instalar el paquete "leaflet" y acceder a la documentación


# Script ------------------------------------------------------------------
source("R/guia rapida de r/Codigo/funciones.R")

resta(1,2)

# Crear la función multiplicación y división en el script "funciones"
# cargar el archivo y usar las dos funciones (a = 10, b = 0)







