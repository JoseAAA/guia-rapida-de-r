###########################################################################
#                                                                         #
#                          Regresión Logística                            #
#                                                                         #
###########################################################################

# Librerías ---------------------------------------------------------------
library(tidyverse)
library(tidymodels)

options(digits = 3,scipen = 999)
data("iris")
df <- iris %>% 
  filter(Species != "virginica")

# Análisis Exploratorio ---------------------------------------------------
dfgrafico <- df %>% 
  pivot_longer(!Species,names_to = "Variable",values_to = "Valor")
  
ggplot(dfgrafico, aes(x = Species, y = Valor, color = Species)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(width = 0.1) +
  theme_bw()+
  facet_wrap(~Variable)

# Modelo ------------------------------------------------------------------
modelo <- glm(Species ~ Sepal.Length, data = df1, family = binomial);summary(modelo1)

# Ajuste ------------------------------------------------------------------
ajuste <- augment(modelo) %>% 
  select(mpg,.fitted) %>% 
  rename(Ajuste = .fitted) %>% 
  mutate(id = 1:n())

ggplot(ajuste,aes(x = id,y = mpg))+
  geom_line(color = "blue")+
  geom_line(data = ajuste,mapping = aes(x = id, y = Ajuste),color = "red")

# Predicción --------------------------------------------------------------
predicion <- tibble(wt = 3.1,cyl = factor(6,levels = c(4,6,8)))
predict(modelo1,type = "response")
