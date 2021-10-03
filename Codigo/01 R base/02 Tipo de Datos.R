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


# Cadena de Texto ---------------------------------------------------------
nombre <- "Jose"

# Crear una variable tipo Cadena de texto

# Factor ------------------------------------------------------------------
sexo <- factor(c("Hombre","Mujer"))

# Crear una variable tipo factor


# Lógico ------------------------------------------------------------------
aprender_r_es_dificil <- FALSE

# Crear una variable tipo lógico

# NA y NULL ---------------------------------------------------------------
no_medido <- NA
no_medido <- NULL

edad <- c(18, NA, 20)
mean(edad)

# Coerción ----------------------------------------------------------------
edad <- "20"
edad + 1

edad <- as.numeric(edad)
edad + 1

# Cambiar a cadena de texto la siguiente variable edad


# Verificación del Tipo de Variable ---------------------------------------
class(edad)

# Verificar el tipo de variable las variables creadas anteriormente


