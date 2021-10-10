###########################################################################
#                                                                         #
#                               Subconjuntos                              #
#          En esta sección se hablara de las distintas formas             #
#      para acceder una parte de las estructura de datos que cree         #
#                                                                         #
###########################################################################

set.seed(123)
edad <- rnorm(100,20,5)
altura <- rnorm(100,163,10)
sexo <- factor(sample(c("hombre","mujer"),100,replace = T))

matriz <- cbind(edad,altura)
df <- data.frame(edad,altura,sexo)
lista <- list(edad,altura,sexo)

# Índices -----------------------------------------------------------------

# De la variable "edad" seleccionar las 10 primeros valore

# De la variable "matriz" seleccionar para la dimensión 1 los 10 
# primeros valores y la dimensión 2 los 10 últimos valores

# De la variable "df" seleccionar los índices impares de las 
# columnas altura y sexo

# Nombre ------------------------------------------------------------------

# De la variable "df" seleccionar las columnas sexo y altura

# De la variable "lista" seleccionar los valores edad y altura

# Índice y Nombre ---------------------------------------------------------

# De la variable "df" seleccionar las filas multiplos de 5 y 
# las columnas edad y altura

# $ y [[]] ------------------------------------------------------------------



# Condicionales -----------------------------------------------------------

# De la variable "edad" seleccionar las edades mayor a la media

# De la variable "altura" seleccionar las alturas que 
# se encuentra en el 50% central

#  De la variable "sexo" seleccionar los de sexo mujer

# De la variable "df" seleccionar las filas que son del sexo hombre, 
# edades mayor a la mediana y altura mayor a 170 o menor a 160 
# indicar el número de filas del data frame resultante




