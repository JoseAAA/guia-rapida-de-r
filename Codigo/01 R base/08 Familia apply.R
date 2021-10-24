###########################################################################
#                                                                         #
#                             Familia apply                               #
#            En esta sección se hablara de la familia apply               #
#                       y la programación funcional                       #
#                                                                         #
###########################################################################

matriz <- matrix(1:12, nrow = 4)

for (i in 1:4) {
  print(sum(matriz[i,]))
}

for (j in 1:3) {
  print(sum(matriz[,j]))
}

# Apply -------------------------------------------------------------------
# MARGIN = 1 filas
# MARGIN = 2 columnas

suma_mayor_a <- function(x,a) {
  
  result <- ""
  
  if(sum(x) < a){
    result <- paste("menor que",a)
  } else{
    result <- paste("mayor igual que",a)
  }
  
  return(result)
}

apply(matriz, MARGIN = 1, FUN = sum)
apply(matriz, MARGIN = 1, FUN = suma_mayor_a, a = 15)
apply(matriz, MARGIN = 2, FUN = sum)
apply(matriz, MARGIN = 2, FUN = suma_mayor_a, a = 15)

# Del data.frame "iris", sacar la media y desviación estandar 
# de las columnas cuantitativas con la función apply

apply(iris[,1:4],MARGIN = 2,FUN = mean)
apply(iris[,1:4],MARGIN = 2,FUN = sd)
apply(iris[,1:4],MARGIN = 2,FUN = quantile, probs = c(0.2,0.8))

apply(iris[iris$Species == "setosa",1:4],MARGIN = 2,FUN = mean)
apply(iris[iris$Species == "versicolor",1:4],MARGIN = 2,FUN = mean)
apply(iris[iris$Species == "virginica",1:4],MARGIN = 2,FUN = mean)

# Lapply ------------------------------------------------------------------
library(dplyr)

iris_lista <- iris %>% 
  split(.$Species)

lapply(iris_lista, summary)
