###########################################################################
#                                                                         #
#                         Estructura de Control                           #
#             En esta sección se hablara de las estructuras               #
#                  de control en R y como utilizarlas                     #
#                                                                         #
###########################################################################

a <- 1:10
b <- 21

# if else -----------------------------------------------------------------

if(b<20){
  print("menor a 20")
} else{
  print("mayor a 20")
}

# Crear una función (es_numerico) que me evalue si una variable es numérico
# u otro tipo de dato (imprimir resultado de evaluación)

es_numerico <- function(a){
  resultado <- ""
  
  if(is.numeric(a)){
    resultado <- "Numérico"
  } else{
    resultado <- "Otro"
  }
  
  return(resultado)
}

es_numerico(10)
es_numerico("jose")

# for ---------------------------------------------------------------------

for (i in a) {
  print(i)
}

# Crear una función (cuadros) que eleve al cuadrado cada valor de un vector
# usando el bucle for

cuadros <- function(a){
  resultado <- c()
  
  for (i in 1:length(a)) {
    resultado[i] <- a[i]^2
  }
  
  return(resultado)
}

cuadros(1:20)

# while -------------------------------------------------------------------

i <- 1
while(i<10){
  print(i)
  i <- i+1
}

# Crear una función (imprimir_menor_a) que imprima los valores menores que a 
# y mayores que 1 usando el bucle while

imprimir_menor_a <- function(a){
  i <- 1
  while (i<a) {
    print(i)
    i <- i+1
  }
}

imprimir_menor_a(30)

# break next --------------------------------------------------------------
# break
for (i in 1:10) {
  if(i<5){
    print(i)
  } else{
    break
  }
}

i <- 1
while(i<10){
  print(i)
  break
}

#next
for (i in 1:10) {
  if(i==5){
    next
  } else{
    print(i)
  }
}

i <- 0
while(i<10){
  i <- i+1
  if(i==5){
    next
  } else{
    print(i)
  }
}

# repeat ------------------------------------------------------------------
i <- 1
repeat{
  if(i<20){
    print(i)
  }else{
    break
  }
  i <- i+1
}

