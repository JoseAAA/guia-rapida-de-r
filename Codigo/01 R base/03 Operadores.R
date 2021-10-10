###########################################################################
#                                                                         #
#                               Operadores                                #
#             En esta sección se hablará de las operaciones               #
#                        que se pueden realizar en R                      #
#                                                                         #
###########################################################################

# Crear dos variables "a" y "b", cuyo valores son 10, 20 respectivamente
a <- 10
b <- 20

# Operadores Aritméticos --------------------------------------------------
# realizar las operaciones aritmeticas con las variables "a" y "b"

# Suma
a + b

# Resta
a - b

# Multiplicaciòn
a * b

# Divisiòn
a/b

# Potencia
options(scipen = 999) # Elimina la notación cientifica (1e+n)
a^b

# Divisiòn Entera
a%%b

# Operadores relacionales -------------------------------------------------
# realizar las operaciones relacionales con las variables "a" y "b"
# considerar el orden

# menor
a < b

# menor igual
a <= b

# mayor
a > b

# mayor igual
a >= b

# igual
a == b

# diferente
a != b

# Operadores lógicos ------------------------------------------------------
# Realizar la operación "a" mayor 10 o "b" menor o igual a 20
(a > 10) | (b < 20) | (b < 10)

# Realizar la operación "a" mayor 10 y "b" menor o igual a 20
(a >= 10) & (b <= 20) & (a < 5)

# Realizar la negación de operar "a" mayor a 10
!(a >= 10)
!(a < 10)

# Pertenencia
2 %in% c(2,6,9)

# Operadores de Asignación ------------------------------------------------
a <- 1
a = 1

# Utilizar el operador de asignación para darle el valor 
# de mi edad a la variable "edad"
edad <- 23


