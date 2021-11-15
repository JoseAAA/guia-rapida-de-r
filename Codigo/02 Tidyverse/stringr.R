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
n <- str_length(nombres)

# str_c -------------------------------------------------------------------
str_c(nombres,1:4,sep = " ")
str_c(nombres,collapse = "|")

# str_sub -----------------------------------------------------------------
str_sub(nombres,n)

table3 %>% 
  mutate(cutroUltimo = str_sub(rate,str_length(rate)-3))

# str_to_upper o str_to_lower ---------------------------------------------
str_to_upper(nombres)
str_to_lower(nombres)

names(iris)[4:5] <- str_to_upper(names(iris)[4:5])

# str_detect --------------------------------------------------------------
str_detect(nombres,"^[A-z]")
str_detect(nombres,"[ye]$")
str_detect(nombres,"os")

# str_count ---------------------------------------------------------------
str_count(nombres,"s")

# str_subset --------------------------------------------------------------
str_subset(nombres,"^J")

# str_replace -------------------------------------------------------------
str_replace_all(nombres,"[io]","-")

table3 %>% 
  mutate(rate = str_replace(rate,"/",".")) %>% 
  separate(rate, into = c("cases", "population"), sep = "\\.") %>% 
  mutate(cases = as.numeric(cases),
         population = as.numeric(population),
         rate = cases/population*1000)

# str_split ---------------------------------------------------------------
str_split(nombres,"")