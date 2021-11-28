###########################################################################
#                                                                         #
#                             Cluster K-means                             #
#                                                                         #
###########################################################################

# Librerías ---------------------------------------------------------------
library(tidyverse)
library(factoextra)
library(cluster)
library(NbClust)

options(digits = 3,scipen = 999)
data("iris")
df <- scale(iris[1:4])

# Análisis Exploratorio ---------------------------------------------------
# Número de grupo óptimo
fviz_nbclust(df, kmeans, method = "wss") +
  geom_vline(xintercept = 2, linetype = 2)+
  labs(subtitle = "Elbow method")

fviz_nbclust(df, kmeans, method = "silhouette")+
  labs(subtitle = "Silhouette method")

set.seed(123)
fviz_nbclust(df, kmeans, nstart = 25, method = "gap_stat", nboot = 50)+
  labs(subtitle = "Gap statistic method")

nb <- NbClust(df, distance = "euclidean", min.nc = 2,
              max.nc = 10, method = "kmeans")
fviz_nbclust(nb)

# Modelo ------------------------------------------------------------------
km.res <- eclust(df, "kmeans", k = 3, nstart = 25, graph = FALSE)

fviz_cluster(km.res, geom = "point", ellipse.type = "norm",
             palette = "jco", ggtheme = theme_minimal())

fviz_silhouette(km.res, palette = "jco", 
                ggtheme = theme_classic())

# Ajuste ------------------------------------------------------------------
iris.grupo <- tibble(iris,grupo = km.res$cluster)
table(iris.grupo$Species,iris.grupo$grupo)

iris.grupo %>% 
  group_by(grupo) %>% 
  summarise(across(contains("."),mean))
