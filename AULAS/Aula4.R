queimadas1 = read.csv("/home/est/jsv24/CE302/AULAS/Bancos/Queimadas 1.csv")
queimadas2 = read.csv("/home/est/jsv24/CE302/AULAS/Bancos/Queimadas 2.csv")
queimadas3 = read.csv("/home/est/jsv24/CE302/AULAS/Bancos/Queimadas 3.csv")

queimadas = rbind(queimadas1, queimadas2, queimadas3)

queimadas

head(queimadas, n=9)
tail(queimadas, n=3)
nrow(queimadas)
ncol(queimadas)
summary(queimadas)
str(queimadas)
unique(queimadas$bioma)
by(queimadas$avg_numero_dias_sem_chuva,
   queimadas$estado, mean)
norte = subset(queimadas, estado == "AMAZONAS" | estado == "ACRE" | estado == "RORAIMA" | estado == "AMAPÁ" |
             estado == "RONDÔNIA" | estado == "PARÁ"| estado == "AMAPÁ")

sul = subset(queimadas, estado == "PARANÁ" | estado == "SANTA CATARINA" | estado == "RIO GRANDE DO SUL")

norte_sul = rbind(sul, norte)

mean(norte_sul$avg_numero_dias_sem_chuva)




################################          DATA TABLE


meu_data_frame <- data.frame(
  nome = c("Alice", "Bob", "Carol", "Ana", "João", "Carlos", "Patrícia", "Leonardo"),
  idade = c(25, 30, 28, 20, 27, 50, 60, 45),
  salario = c(5000, 6000, 5500, 8000, 2000, 3500, 10000, 3800 ), 
  meio_de_transporte = c('onibus', 'bicicleta', 'onibus', 'carro', 'carro', 'onibus', 'onibus', 'bicicleta')
)


require(data.table)

meu_data_frame
data.table(meu_data_frame)
data.table(queimadas)


meu_data_table = data.table(meu_data_frame)
meu_data_table

meu_data_table[meu_data_table$salario > 7000]
############         ESTUDAR DATA TABLE






################################       TIBBLE
require(tibble)
require(magrittr)
require(dplyr)

tibble(meu_data_frame)
glimpse(meu_data_frame)


