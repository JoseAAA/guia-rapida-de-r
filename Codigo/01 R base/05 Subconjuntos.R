###########################################################################
#                                                                         #
#                               Subconjuntos                              #
#          En esta sección se hablara de las distintas formas             #
#      para acceder una parte de las estructura de datos que cree         #
#                                                                         #
###########################################################################

set.seed(1234)
edad <- rnorm(100,20,5)
altura <- rnorm(100,163,10)
sexo <- factor(sample(c("hombre","mujer"),100,replace = T))

matriz <- cbind(edad,altura,sexo)
df <- data.frame(edad,altura,sexo)
lista <- list(e = edad,a = altura,s = sexo)

# Índices -----------------------------------------------------------------

length(edad)
mean(edad)
sd(edad)

summary(df)

edad[1:10]
edad[-(1:10)]

matriz[1:10,1]
matriz[-(1:10),-1]

df[1:10,1:2]
df[-(1:10),-1]

# De la variable "edad" seleccionar los 10 últimos valores

edad[91:100]
n <- length(edad)
edad[(n-9):n]

# De la variable "matriz" seleccionar para la dimensión 1 los 10 
# primeros valores y la dimensión 2 la última columna

matriz[1:10,3]

# De la variable "df" seleccionar los índices impares de las 
# columnas altura y sexo

df[seq(1,99,2),2:3]

# Nombre ------------------------------------------------------------------

df["edad"]

lista["s"]

# De la variable "df" seleccionar las columnas sexo y altura

df[c("sexo","altura")]

# De la variable "lista" seleccionar los valores edad y altura

lista[c("e","a")]

# Índice y Nombre ---------------------------------------------------------

df[c(10,59,79),c("edad","altura")]

# De la variable "df" seleccionar las filas multiplos de 5 y 
# las columnas edad y altura

df[seq(5,100,5),1:2]
df[seq(5,100,5),c("edad","altura")]

# $ y [[]] ------------------------------------------------------------------

df$sexo
lista$a
lista[[1]]

# Condicionales -----------------------------------------------------------

edad[edad>mean(edad)]
sexo[sexo == "mujer"]

df[df$sexo == "mujer" & df$edad > 20 & df$altura > 170,]

# De la variable "edad" seleccionar las edades mayor a la mediana

edad[edad>median(edad)]

# De la variable "altura" seleccionar las alturas que 
# se encuentra en el 50% central

altura[altura >= quantile(altura,0.25) & altura <= quantile(altura,0.75)]

#  De la variable "sexo" seleccionar los de sexo mujer

sexo[sexo == "mujer"]

# De la variable "df" seleccionar las filas que son del sexo hombre, 
# edades mayor a la mediana y altura mayor a 170 o menor a 160 
# indicar el número de filas del data frame resultante

df2 <- df[df$sexo == "hombre" & (df$altura>170 | df$altura < 160),]
nrow(df2)



