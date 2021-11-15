###########################################################################
#                                                                         #
#                                 purrr                                   #
#                    En esta sección se hablara de la                     #
#                           programación funcional                        #
#                                                                         #
###########################################################################

library(tidyverse)

# map ---------------------------------------------------------------------
hist(rnorm(1000,100,5))

ggplot(tibble(x = qnorm(seq(0.5,1,length.out = 50),25,10)),aes(x = x)) +
  geom_density()

plot(density(qnorm(seq(0,1,length.out = 1000),25,10)))

mu <- list(5, 10, -3)
set.seed(12345)
mu %>% 
  map(rnorm, n = 10000, sd = 4) %>% 
  map(hist)

sigma <- list(4,10,1)
set.seed(12345)
sigma %>% 
  map(~rnorm(n = 1000,mean = 100, sd = .)) %>% 
  map(hist)

hist(rnorm(n = 10000, mean = 5,sd = 4))
hist(rnorm(n = 10000, mean = 10,sd = 4))
hist(rnorm(n = 10000, mean = -3,sd = 4))
hist(rnorm(n = 10000, mean = 30,sd = 4))
hist(rnorm(n = 10000, mean = 100,sd = 4))

for (i in 1:length(mu)) {
  hist(rnorm(n = 10000,mean = mu[[i]],sd = 4))
}

mtcars %>%
  split(.$cyl) %>% # from base R
  map(~ lm(mpg ~ wt + disp, data = .)) %>%
  map(summary) %>%
  map_dbl("r.squared")

# map2 --------------------------------------------------------------------
mu <- list(5, 10, -3)
sigma <- list(1, 5, 10)
map2(mu, sigma, rnorm, n = 1000) %>% 
  map(hist)

# pmap --------------------------------------------------------------------
mu <- list(5, 10, -3)
sigma <- list(1, 5, 10)
n <- list(10, 30, 50)
args1 <- list(n, mu, sigma)
args1 %>%
  pmap(rnorm)

map2_chr(mu,sigma,~paste("sigma = ",.y," y mu = ",.x))