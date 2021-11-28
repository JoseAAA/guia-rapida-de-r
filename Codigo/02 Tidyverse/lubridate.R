###########################################################################
#                                                                         #
#                              lubridate                                  #
#                   En esta sección se hablara de como                    #
#                           trabajar con fechas                           #
#                                                                         #
###########################################################################

library(tidyverse)
library(lubridate)

# Crear fechas ------------------------------------------------------------
fecha <- today()
now()

# cadena de texto
ymd(c("2021-11-14","2021-11-30"))
dmy("14/11/2021")
mdy("noviembre 14, 2021")
dmy("14-nov-2021")
ymd(20211114)

# construción por componentes individuales
make_date(2021,11,14)

# Componentes de una fecha ------------------------------------------------
year(fecha)
month(fecha,label = T,abbr = F)
isoweek(fecha)
day(fecha)
wday(fecha,label = T,abbr = F,week_start = 1)

year(fecha) <- 2021
update(fecha, year = 2020, month = 2, mday = 2, hour = 2)

# Intervalos de tiempo ----------------------------------------------------
fecha + days(1)
fecha + months(1)
fecha + years(1)

fecha - days(1)
fecha - months(1)
fecha - years(1)

fecha + ddays(1)
fecha + dmonths(1)
fecha + dyears(1)

fecha - ddays(1)
fecha - dmonths(1)
fecha - dyears(1)

interval(ymd("2021-10-30"),fecha)

as.numeric(fecha - ymd("2021-10-30"))
interval(ymd("2001-11-15"),fecha) / years(1)
interval(ymd("2001-11-15"),fecha) %/% months(1)
