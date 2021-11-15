###########################################################################
#                                                                         #
#                               forcats                                   #
#                   En esta sección se hablara de como                    #
#                           trabajar con factores                         #
#                                                                         #
###########################################################################

library(tidyverse)

# fct_reorder -------------------------------------------------------------
relig_summary <- gss_cat %>%
  group_by(relig) %>%
  summarise(
    age = mean(age, na.rm = TRUE),
    tvhours = mean(tvhours, na.rm = TRUE),
    n = n()) %>% 
  arrange(tvhours)

ggplot(relig_summary, aes(tvhours, relig)) + geom_point()
ggplot(relig_summary, aes(tvhours, fct_reorder(relig,tvhours))) + geom_point()

ggplot(relig_summary, aes(age, relig)) + geom_point()
ggplot(relig_summary, aes(age, fct_reorder(relig,age))) + geom_point()

# fct_relevel -------------------------------------------------------------
rincome_summary <- gss_cat %>%
  group_by(rincome) %>%
  summarise(
    age = mean(age, na.rm = TRUE),
    tvhours = mean(tvhours, na.rm = TRUE),
    n = n()
  )

ggplot(rincome_summary, aes(age, rincome)) + geom_point()
ggplot(rincome_summary, aes(age, fct_reorder(rincome, age))) + geom_point()
ggplot(rincome_summary, aes(age, fct_relevel(rincome, "Not applicable"))) +
  geom_point()

# fct_recode --------------------------------------------------------------
gss_cat %>% 
  count(partyid)

gss_cat %>%
  mutate(partyid = fct_recode(partyid,
                              "Republican, strong"    = "Strong republican",
                              "Republican, weak"      = "Not str republican",
                              "Independent, near rep" = "Ind,near rep",
                              "Independent, near dem" = "Ind,near dem",
                              "Democrat, weak"        = "Not str democrat",
                              "Democrat, strong"      = "Strong democrat"
  )) %>%
  count(partyid)

# fct_collapse ------------------------------------------------------------
gss_cat %>% 
  count(partyid)

gss_cat %>%
  mutate(partyid = fct_collapse(partyid,
                                other = c("No answer", "Don't know", "Other party"),
                                rep = c("Strong republican", "Not str republican"),
                                ind = c("Ind,near rep", "Independent", "Ind,near dem"),
                                dem = c("Not str democrat", "Strong democrat")
  )) %>%
  count(partyid)

# fct_lump ----------------------------------------------------------------
gss_cat %>% 
  count(relig) %>% 
  arrange(n)

gss_cat %>%
  mutate(relig = fct_lump(relig,n = 3,other_level = "otros")) %>%
  count(relig)


