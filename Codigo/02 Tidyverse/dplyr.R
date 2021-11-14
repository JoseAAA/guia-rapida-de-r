###########################################################################
#                                                                         #
#                                  dplyr                                  #
#              En esta sección se hablara de la manipulación              #
#                    de los datos con el paquete dplyr                    #
#                                                                         #
###########################################################################

library(tidyverse)
data("iris")
iris <- as_tibble(iris)

# mutate ------------------------------------------------------------------
iris2 <- iris
iris2$a <- iris2$Sepal.Length + iris2$Sepal.Width
iris2$b <- iris2$Petal.Length + iris2$Petal.Width
iris2$c <- iris2$a/iris2$b

iris2 <- mutate(iris,a = Sepal.Length + Sepal.Width, 
       b = Petal.Length + Petal.Width,
       c = a/b,
       d = 2)

iris2 <- iris %>%
  mutate(a = Sepal.Length + Sepal.Width, 
         b = Petal.Length + Petal.Width,
         c = a/b,
         d = if_else(Sepal.Length<mean(Sepal.Length),
                     Sepal.Length+Sepal.Width,Sepal.Length-Sepal.Width),
         e = case_when(Sepal.Length<quantile(Sepal.Length,0.25)~"menor Q1",
                       Sepal.Length<quantile(Sepal.Length,0.5)~"entre Q1 y Q2",
                       Sepal.Length<quantile(Sepal.Length,0.75)~"entre Q2 y Q3",
                       TRUE~"mayor igual Q3"
                       )
         )

mutate_if(iris,is.numeric,~.+100)

# select ------------------------------------------------------------------
iris2 <- iris
iris2[,c("Sepal.Length","Sepal.Width")]

select(iris,ends_with("Length"))

iris %>% 
  select(contains("."))

iris2 <- iris %>%
  mutate(a = Sepal.Length + Sepal.Width, 
         b = Petal.Length + Petal.Width,
         c = a/b,
         d = if_else(Sepal.Length<mean(Sepal.Length),
                     Sepal.Length+Sepal.Width,Sepal.Length-Sepal.Width),
         e = case_when(Sepal.Length<quantile(Sepal.Length,0.25)~"menor Q1",
                       Sepal.Length<quantile(Sepal.Length,0.5)~"entre Q1 y Q2",
                       Sepal.Length<quantile(Sepal.Length,0.75)~"entre Q2 y Q3",
                       TRUE~"mayor igual Q3"
         )
  ) %>% 
  select(a:e)

# filter ------------------------------------------------------------------
iris2 <- iris
iris2[iris2$Species == "setosa" & iris2$Sepal.Length>quantile(iris2$Sepal.Length,0.25),]

filter(iris,Species == "setosa", Sepal.Length>quantile(Sepal.Length,0.25))

iris %>% 
  filter(Species == "setosa", Sepal.Length>quantile(Sepal.Length,0.25))

iris2 <- iris %>%
  filter(Species %in% c("setosa","virginica"), Sepal.Length>quantile(Sepal.Length,0.25)) %>% 
  mutate(a = Sepal.Length + Sepal.Width, 
         b = Petal.Length + Petal.Width,
         c = a/b,
         d = if_else(Sepal.Length<mean(Sepal.Length),
                     Sepal.Length+Sepal.Width,Sepal.Length-Sepal.Width),
         e = case_when(Sepal.Length<quantile(Sepal.Length,0.25)~"menor Q1",
                       Sepal.Length<quantile(Sepal.Length,0.5)~"entre Q1 y Q2",
                       Sepal.Length<quantile(Sepal.Length,0.75)~"entre Q2 y Q3",
                       TRUE~"mayor igual Q3"
         )
  ) %>% 
  select(a:e)

# arrange -----------------------------------------------------------------
arrange(iris,desc(Sepal.Length),desc(Sepal.Width))

iris %>% 
  arrange(desc(Sepal.Length),desc(Sepal.Width))

iris2 <- iris %>%
  filter(Species %in% c("setosa","virginica"), Sepal.Length>quantile(Sepal.Length,0.25)) %>% 
  mutate(a = Sepal.Length + Sepal.Width, 
         b = Petal.Length + Petal.Width,
         c = a/b,
         d = if_else(Sepal.Length<mean(Sepal.Length),
                     Sepal.Length+Sepal.Width,Sepal.Length-Sepal.Width),
         e = case_when(Sepal.Length<quantile(Sepal.Length,0.25)~"menor Q1",
                       Sepal.Length<quantile(Sepal.Length,0.5)~"entre Q1 y Q2",
                       Sepal.Length<quantile(Sepal.Length,0.75)~"entre Q2 y Q3",
                       TRUE~"mayor igual Q3"
         )
  ) %>% 
  select(a:e) %>% 
  arrange(desc(a),b)

# summarise ---------------------------------------------------------------
summary(iris)

iris %>% 
  summarise(minSL = min(Sepal.Length),
            promedioSL = mean(Sepal.Length),
            sdSL = sd(Sepal.Length),
            n = n())

iris %>%
  filter(Species %in% c("setosa","virginica"), Sepal.Length>quantile(Sepal.Length,0.25)) %>% 
  mutate(a = Sepal.Length + Sepal.Width, 
         b = Petal.Length + Petal.Width,
         c = a/b,
         d = if_else(Sepal.Length<mean(Sepal.Length),
                     Sepal.Length+Sepal.Width,Sepal.Length-Sepal.Width),
         e = case_when(Sepal.Length<quantile(Sepal.Length,0.25)~"menor Q1",
                       Sepal.Length<quantile(Sepal.Length,0.5)~"entre Q1 y Q2",
                       Sepal.Length<quantile(Sepal.Length,0.75)~"entre Q2 y Q3",
                       TRUE~"mayor igual Q3"
         )
  ) %>% 
  select(a:e) %>% 
  arrange(desc(a),b) %>% 
  summarise_if(is.numeric,mean)

# group_by ----------------------------------------------------------------
iris %>%
    mutate(suma = sum(Sepal.Length)) %>% 
    filter(Sepal.Length>mean(Sepal.Length)) %>% 
    summarise(PromedioSL = mean(Sepal.Length),
              sdsl = sd(Sepal.Length)) %>% 
    as.data.frame()
  
iris %>%
  group_by(Species) %>% 
  mutate(suma = sum(Sepal.Length)) %>% 
  filter(Sepal.Length>mean(Sepal.Length)) %>% 
  summarise_if(is.numeric,mean) %>% 
  as.data.frame()
  
# join --------------------------------------------------------------------
x <- tribble(
  ~key, ~val_x,
  1, "x1",
  2, "x2",
  3, "x3"
)
y <- tribble(
  ~key, ~val_y,
  1, "y1",
  2, "y2",
  4, "y3"
)

inner_join(x,y, by = "key")

left_join(x,y, by = "key")

right_join(x,y, by = "key")

full_join(x,y, by = "key")

anti_join(y,x, by = "key")
