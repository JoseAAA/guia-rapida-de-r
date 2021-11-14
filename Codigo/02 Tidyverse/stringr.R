###########################################################################
#                                                                         #
#                               stringr                                   #
#                   En esta sección se hablara de como                    #
#                       trabajar con cadena de texto                      #
#                                                                         #
###########################################################################

library(tidyverse)

nombres <- c("Lesly","Julissa","Jose","Rodrigo")

# str_length --------------------------------------------------------------
str_length(nombres)

# str_c -------------------------------------------------------------------
str_c(nombres,1:4)
str_c(nombres,collapse = "|")

# str_sub -----------------------------------------------------------------
str_sub(nombres,1,3)

# str_to_upper o str_to_lower ---------------------------------------------
str_to_upper(nombres)
str_to_lower(nombres)

# str_detect --------------------------------------------------------------
str_detect(nombres,"^J")
str_detect(nombres,"y$")

# str_count ---------------------------------------------------------------
str_count(nombres,"a")

# str_subset --------------------------------------------------------------
str_subset(nombres,"^J")

# str_replace -------------------------------------------------------------
str_replace(nombres,"[a-u]","-")

# str_split ---------------------------------------------------------------
str_split(nombres," ")



