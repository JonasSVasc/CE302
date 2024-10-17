install.packages("data.table")
require(data.table) 
install.packages("dplyr")
install.packages("tidyr")
require(dplyr)
require(tidyr)
car = fread("~/Faculdade/2° Periodo/CE302/datasets/archive/Brazil Total highway crashes 2010 - 2023.csv")

glimpse(car)


#LEMBRE-SE DE SEMPRE QUE FOR USAR O %>% ANTES DE UM FILTRO

car %>% 
  select(data, tipo_de_acidente) %>% 
  glimpse()

car %>%  
  select(starts_with("tipo")) %>% 
  glimpse()

car %>% 
  select(ends_with("feridos")) %>% 
  glimpse()

car %>% 
  select(contains("mente")) %>% 
  glimpse()


car %>% 
  select(where(is.numeric)) %>% 
  glimpse()

car %>% 
  select(where(is.character)) %>% 
  glimpse()

meios = c("bicicleta"
          , "automovel", "moto")

car %>% 
  select(all_of(meios)) %>% 
  glimpse()

car %>% 
  select(any_of(meios)) %>% 
  glimpse()

filtrados = car %>% 
  filter(automovel > 2)
glimpse(filtrados)

glimpse(car %>% 
          filter(automovel >= 2 & moto >2))
glimpse(car %>% 
          filter(automovel >= 2, moto >2))


g = car %>% 
  filter(between(moto, 4,8))


g %>% 
  glimpse()

vitima = "com vítima"

car %>% 
  filter(tipo_de_ocorrencia %in% vitima) %>%
  glimpse()


car %>% 
  filter(!(tipo_de_ocorrencia %in% vitima)) %>% 
  glimpse



car %>% 
  filter(tipo_de_ocorrencia %like% 	
           "com vítima") %>% 
  glimpse()


car %>% 
  filter(grepl("ilesa|fatal", tipo_de_ocorrencia)) %>% 
  glimpse()

################# EXERCÍCIOS




#A) 

car %>% 
  select(data, tipo_de_ocorrencia, automovel, bicicleta, onibus, caminhao,
         moto, tracao_animal, outros, mortos) %>% 
  glimpse()

#B)

car %>% 
  select(contains("feridos")) %>% 
  glimpse()


#C)

car %>% 
  select(where(is.numeric)) %>% 
  glimpse()

#D) 

car %>% 
  select(where(is.logical)) %>% 
  glimpse()

#E)

car %>% 
  select(ends_with("o")) %>% 
  glimpse()

#F)

car %>% 
  select(starts_with("t")) %>%  
  glimpse()

#G)

car %>% 
  filter(automovel >= 5 & moto >= 3) %>% 
  glimpse()


#H)

car %>% 
  filter(automovel >= 5 | moto >= 3 ) %>% 
  glimpse()

#I) 

car %>% 
  filter(automovel >= 5 | moto >= 3 & tipo_de_ocorrencia %like% "Com vítima") %>% 
  glimpse()


#J)

a = c("Autopista Regis Bittencourt", "Autopista Litoral Sul", "Via Sul")

car %>% 
  filter(automovel >= 5 | moto >= 3 & lugar_acidente %like% a) %>% 
  glimpse()

