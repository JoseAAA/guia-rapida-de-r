###########################################################################
#                                                                         #
#                         Estructura de Datos                             #
#     En esta sección se hablara de las distintas estructuras de datos    # 
#         que presenta R para trabajar con nuestra información            #
#                                                                         #
###########################################################################

# Vectores ----------------------------------------------------------------
edad <- c(20,25,22,28,30)

class(edad)
length(edad)

edad <- c(edad,27)

edad + 10
edad > 25

# Crear un vector del tipo cadena de texto con los nombres de los 
# participantes de este curso, hallar el tipo y la longitud del vector
nombres <- c("Jose","Lesly","Julissa")
class(nombres)
length(nombres)

# Crear tres vectores donde el primero empiece en 1 y termina en 100, 
# el segundo los numeros pares de 100 a 200 y el 
# tercero un vector de tamaño 1000 con valor único "camposol"
vector1 <- 1:100
vector2 <- seq(100,200,2)
vector3 <- rep("camposol",1000)

# Matrices y Arrays -------------------------------------------------------
vector_1 <- 1:20
vector_2 <- seq(41,80,2)
vector_3 <- rep(24,20)

length(vector_1)
length(vector_2)
length(vector_3)

matriz_1 <- matrix(vector_1,4,5,byrow = F)
matriz_2 <- cbind(vector_1,vector_2,vector_3)
matriz_3 <- rbind(vector_1,vector_2,vector_3)

class(matriz_2)
length(matriz_2)
dim(matriz_2)

matriz_2 + 10

# Crear una matriz de dimensión 10 x 20 donde tenga un único valor "Camposol"
matriz_4 <- matrix(rep("camposol",200),10,20)

# Crear una matriz donde en la primera columna tenga los números 
# pares de 1 a 100 y en la segunda columna los números impares de 1 a 100
vector_1 <- seq(2,100,2)
vector_2 <- seq(1,99,2)
matriz_5 <- cbind(vector_1,vector_2)

# Data Frames -------------------------------------------------------------
participantes_curso_R <- data.frame(edad = c(24,30),
                                    altura = c(163,170),
                                    sexo = factor(c("hombre","mujer")))

nrow(participantes_curso_R)
ncol(participantes_curso_R)
names(participantes_curso_R)

# Crear un data frame de una entidad que conozcas


# Listas ------------------------------------------------------------------
mi_vector <- 1:10
mi_matriz <- matrix(1:4, nrow = 2)
mi_df     <- data.frame("num" = 1:3, "let" = c("a", "b", "c"))

mi_lista <- list(un_vector = mi_vector, una_matriz = mi_matriz, un_df = mi_df)


# Coerción ----------------------------------------------------------------
lista_1 <- list(1:10)
as.data.frame(lista_1)
unlist(lista_1)

