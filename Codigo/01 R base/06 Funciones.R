###########################################################################
#                                                                         #
#                                Funciones                                #
#               En esta sección se hablara de como utilizar               #
#    las funciones predeterminadas de R y a crear mis propias funciones   #
#                                                                         #
###########################################################################

# Funciones de R ----------------------------------------------------------

set.seed(12345)
edad <- rnorm(1000,25,5)

mean(edad)
var(edad)
sd(edad)
median(edad)
quantile(edad,probs = c(0.25,0.75))
shapiro.test(edad)

media <- mean(edad)
desv_est <- sd(edad)
hist(edad, main = "Edades", xlab = "Datos", ylab = "Frecuencia", col = "gold")
abline(v = media, col = "red")
abline(v = media + (desv_est * c(1, -1)), col = "blue")

# Funciones definida por el usuario ---------------------------------------

suma <- function(a,b = 2){
  return(a + b)
}

suma(a = 5, b = 10)
suma(5,10)

# Crear una función que imprima un valor dado

imprimir <- function(x) {
  return(x)
}

imprimir(10)
imprimir("jose")

# Crear una función que me calcule la media y la desviación estandar, 
# estos valores serán retornados en una lista
media_dest <- function(x){
  return(list(media = mean(x),ds = sd(x)))
}

media_dest(edad)
