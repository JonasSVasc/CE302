require(tidyverse)
require(forcats)
require(readxl)
require(dplyr)
require(tidyr)


brazil = read.csv("AULAS/AULA 5/Brazil Total highway crashes 2010 - 2023.csv")
tb = read.csv("AULAS/AULA 5/TB.csv")
mental = read.csv("AULAS/AULA 5/Mental Health Dataset.csv")

summary(brazil)
summary(mental)

unique(mental$Country)

glimpse(mental)

#FILTRANDO OS ITENS COM X CARACTERISTICA EM COMUM 
poland = subset(mental, Country == "Poland")

poland

#SEPRANDO OS ITENS COM X e Y CARACTERISTICAS EM COMUM
coluna = mental[, c("Country", "Gender")]
coluna


x = (1:10)

x1 = x %>%
  sqrt() %>% 
  log() %>% 
  cos() %>% 
  tan()
x1

require(magrittr)

set.seed(123)

normal = rnorm(10) %>% 
  multiply_by(5) %>% 
  add(5)

normal

rnorm(10, 170, 10) %>%  + 4
(1:10)


######## PIPE SERVE PRA DOZER "PO, ESSE BAGULHO AQUI ESTÁ
######## SOB ESTÁ ALTERAÇÃO
#EXEMPLO

teste = c(2,4,6,4,7)

teste %>% + 5

#CRIAR UMA COLUNA COM UMA LÓGICA 
mental %<>% 
  mutate(sem_intervenção = mental_health_interview == "no")
drop(mental$`mental_health_interview == "no"`)






brazil %>% 
  select(onibus, moto)

brazil %>% 
  select(data, tipo_de_acidente)


brazil %>% 
  select(starts_with("tipo")) %>% 
  head()
