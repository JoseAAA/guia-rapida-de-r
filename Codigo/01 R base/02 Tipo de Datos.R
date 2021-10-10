###########################################################################
#                                                                         #
#                             Tipos de Datos                              #
#          En esta sección se hablara de los tipos de datos               #
#                         presentes en el lenguaje R                      #
#                                                                         #
###########################################################################

# Numéricos ---------------------------------------------------------------
edad <- 19

# Crear una variable tipo numérico
peso <- 57
altura <- 160

# Cadena de Texto ---------------------------------------------------------
nombre <- "Jose"

# Crear una variable tipo Cadena de texto
apellido <- "Alarcon"
pais <- "perú"
DNI <- "74058366"

# Factor ------------------------------------------------------------------
sexo <- factor(c("Hombre","Mujer"))

# Crear una variable tipo factor
grado_instruccion <- factor(c("inicial","primaria","secundaria","superior"))
estado_civil <- factor(c("soltero","casado"))

# Lógico ------------------------------------------------------------------
aprender_r_es_dificil <- T

# Crear una variable tipo lógico
Presencia_de_anemia <- FALSE

# NA y NULL ---------------------------------------------------------------
no_medido <- NA
no_medido <- NULL

edad <- c(18, NA, 20)
mean(edad,na.rm = T)

# Coerción ----------------------------------------------------------------
edad <- "20"
edad + 1

edad <- as.numeric(edad)
edad + 1

# Cambiar a cadena de texto la siguiente variable edad


# Verificación del Tipo de Variable ---------------------------------------
class(sexo)

# Verificar el tipo de variable las variables creadas anteriormente


