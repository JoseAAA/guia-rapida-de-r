###########################################################################
#                                                                         #
#                                 tidyr                                   #
#                En esta sección se hablara de como ordenar               #
#                       nuestro conjunto de datos                         #
#                                                                         #
###########################################################################

library(tidyverse)

table1
table2
table3
table4a
table4b
table5

# pivot_longer ------------------------------------------------------------
tidy4a <- table4a %>% 
  pivot_longer(!country, names_to = "year", values_to = "cases")
tidy4b <- table4b %>% 
  pivot_longer(!country, names_to = "year", values_to = "population")

left_join(tidy4a, tidy4b, by = c("country", "year"))

# pivot_wider -------------------------------------------------------------
table2 %>%
  pivot_wider(names_from = type, values_from = count)

# separate ----------------------------------------------------------------
table3 %>% 
  separate(rate, into = c("cases", "population"),sep = "/")

# unite -------------------------------------------------------------------
table5 %>% 
  unite(new, century, year, sep = "")

