###########################################################################
#                                                                         #
#                Importación y Exportación de los datos                   #
#                 En esta sección se hablara de importa y                 #
#                  exportar datos de distintos formatos                   #
#                                                                         #
###########################################################################

library(readr) 
library(readxl)
library(openxlsx)
library(haven)
library(DBI)
library(odbc)

# csv ---------------------------------------------------------------------

# Excel -------------------------------------------------------------------

# sql ---------------------------------------------------------------------
con <- dbConnect(odbc(), 
                 Driver = "SQL Server", 
                 Server = "Csplcdb02\\Prdfractal", 
                 Database = "CMPPRONOSTICOS", 
                 UID      = "proyeccion",
                 PWD      = "Pr0yecci0n19")

# Rdata -------------------------------------------------------------------


