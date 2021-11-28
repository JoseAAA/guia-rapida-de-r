###########################################################################
#                                                                         #
#                            Regresión Lineal                             #
#                                                                         #
###########################################################################       

# Librerías ---------------------------------------------------------------
library(tidyverse)
library(broom)

options(digits = 3,scipen = 999)

# Análisis Exploratorio ---------------------------------------------------
ggplot(mtcars,aes(x = mpg, y = wt))+
  geom_point()

ggplot(mtcars,aes(x = mpg, y = wt))+
  geom_point()+
  facet_wrap(.~cyl)

# Modelo ------------------------------------------------------------------
modelo <- lm(mpg ~ wt+factor(cyl), data = mtcars);summary(modelo)
par(mfrow=c(2,2))
plot(modelo)

# Ajuste ------------------------------------------------------------------
ajuste <- augment(modelo) %>% 
  select(mpg,.fitted) %>% 
  rename(Ajuste = .fitted) %>% 
  mutate(id = 1:n())

ggplot(ajuste,aes(x = id,y = mpg))+
  geom_line(color = "blue")+
  geom_line(data = ajuste,mapping = aes(x = id, y = Ajuste),color = "red")+
  ggplot2::

# Predicción --------------------------------------------------------------
predicion <- tibble(wt = c(3.1,4,5.2),cyl = factor(c(4,6,8),levels = c(4,6,8)))
predict(modelo,predicion,interval = "confidence",level = 0.8)
