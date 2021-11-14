###########################################################################
#                                                                         #
#                                ggplot 2                                 #
#               En esta sección se hablara de como realizar               #
#                     gráficos con el paquete ggplot2                     #
#                                                                         #
###########################################################################

library(tidyverse)

# Geometrías --------------------------------------------------------------
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(size = 5,alpha = 0.5) +
  geom_smooth(formula = y ~ x,method = "lm",se = T)

ggplot(iris,aes(y = Sepal.Length)) + 
  geom_boxplot()

ggplot(iris,aes(x = Sepal.Length)) + 
  geom_density() +
  facet_wrap(.~Species)

# Facetas -----------------------------------------------------------------
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(size = 5,alpha = 0.5) +
  geom_smooth(formula = y ~ x,method = "lm",se = T) +
  facet_wrap(.~Species,nrow = 2,ncol = 2)

ggplot(diamonds,aes(x = carat, y = price)) + 
  geom_bin2d() +
  facet_grid(color~clarity)

ggplot(diamonds,aes(x = carat, y = price)) + 
  geom_bin2d() +
  facet_wrap(.~cut)

# Temas -------------------------------------------------------------------
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(size = 5,alpha = 0.5) +
  geom_smooth(formula = y ~ x,method = "lm",se = T) +
  theme_bw()

# Etiquetas y título ------------------------------------------------------
ggplot(iris,aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + 
  geom_point(size = 5,alpha = 0.5) +
  geom_smooth(formula = y ~ x,method = "lm",se = T) +
  facet_wrap(.~Species,nrow = 2,ncol = 2) +
  theme_bw() +
  labs(x = "Longitud del sepalo",y = "Ancho del sepalo",title = "grafico de puntos")

