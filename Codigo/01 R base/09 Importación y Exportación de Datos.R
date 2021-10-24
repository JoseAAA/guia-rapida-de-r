###########################################################################
#                                                                         #
#                Importación y Exportación de los datos                   #
#                 En esta sección se hablara de importa y                 #
#                  exportar datos de distintos formatos                   #
#                                                                         #
###########################################################################

library(readr) # csv
library(readxl) # Importar excel
library(openxlsx) # importar y exportar excel
library(haven) # sav (spss)
library(DBI) # Conexión a base de datos
library(odbc) # Conexión a base de datos

# csv ---------------------------------------------------------------------
df <- read.csv("Datos/datos.csv")
class(df)
df <- read_csv("Datos/datos.csv")
class(df)

df_resultado <- df[df$edad > mean(df$edad),2:4]

write.csv(df_resultado,"Datos/resultado.csv")

# Excel -------------------------------------------------------------------
df <- read_excel("Datos/datos.xlsx",sheet = 1)
df <- read_excel("Datos/datos.xlsx",sheet = 4,range = "C7:E10")

df_resultado <- df[df$edad > mean(df$edad),]

write.xlsx(df_resultado,"Datos/resultado.xlsx")

# sql ---------------------------------------------------------------------


# RData -------------------------------------------------------------------
save(con,file = "Datos/conexion.RData")

load("Datos/conexion.RData")
