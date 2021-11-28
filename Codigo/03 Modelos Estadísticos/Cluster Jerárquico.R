###########################################################################
#                                                                         #
#                           Cluster Jerárquico                            #
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
# Número grupo óptimo
nb <- NbClust(df, distance = "euclidean", min.nc = 2,
              max.nc = 10, method = "ward.D2")
fviz_nbclust(nb)

# Modelo ------------------------------------------------------------------
res.dist <- dist(df, method = "euclidean")
hc.res <- eclust(res.dist, "hclust", k = 3, hc_metric = "euclidean",
                 hc_method = "ward.D2", graph = FALSE)

fviz_dend(hc.res, k = 3, # Cut in four groups
          cex = 0.5, # label size
          k_colors = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07","#088000"),
          color_labels_by_k = TRUE, # color labels by groups
          rect = TRUE # Add rectangle around groups
)

fviz_silhouette(hc.res, palette = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07","#080000"),
                ggtheme = theme_classic())

fviz_cluster(hc.res, geom = "point", ellipse.type = "norm",
             palette = "jco", ggtheme = theme_minimal())

# Ajuste ------------------------------------------------------------------
iris.grupo <- tibble(iris,grupo = hc.res$cluster)
table(iris.grupo$Species,iris.grupo$grupo)
iris.grupo %>% 
  group_by(grupo) %>% 
  summarise(across(contains("."),mean))
