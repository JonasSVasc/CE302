rnorm(10, mean = 6, sd = 2)
#o primeiro número é o N
x = c('Thiago', 'Alex', 'Lucas')
x

sample(x, size = 2)
#serve pra amostra, pique um sorteio do banco de dados

sample(x, size = 2, replace = T)
#colocando esse replace = T vc consegue colocar 

sample(rnorm(100),size = 13,  replace = T)

P = c(T,T,F,F)
Q = c(T,F,T,F)
P&Q
P|Q

#É POSSÍVEL VOCÊ SOMAR O N DE TRUE DE UM VETOR  BOLEANA

v1 = c(1,4,6)
c = v1 < 5
c
sum(c)


v1 [c(1:2, 4)]
v1[1] = 3
v1


#ESTRUTURA
#VETOR[SELEÇÃO DE DADOS DENTRO DO VETOR] TRANSFORMAÇÃO



#Se você for fazer alguma operação com um vetor tendo NA, tu tenq colocar o comando, na.rm = TRUE
testeNA = c(NA,NA,NA,33,6,74,35)
media_na= mean(testeNA, na.rm = TRUE)

append(testeNA,
       value = c('NA' = media_na))
#CRIANDO VETOR COM "NAMES"
feira = c('batata', "banana", "pera")
feira = c("batata" = 12, "banana" = 14, "pera" = 14)
feira

nomes = 
  names(feira)


order(nomes)

paste(names(feira), feira)


numeros = c(3,5,7,23,2)
rev(numeros)
#serve pra ver o vetor de ordem trocada, tipo se tu quiser ver os numeros finais de um grande vetor





######################################################GRÁFICOS###############################################################################

#plot(x = NOME DO VETOR 1, y = NOME DO VETOR 2, las = 1:3 (serve pra tu mudar a representação dos números dos eixos), pch = estilo do ponto)
#col serve pra tu mudar a cor do gráfico 
plot(x = feira,
     y = v1,
     las = 1,
     pch = 3,
     col = "#5959AB")

vetorRenorm = rnorm(100, 10, 2)
vetorRenorm2 = rnorm(100, 30, 10)


plot( x = vetorRenorm,
      y = vetorRenorm2,
      pch = 2,
      col = "#5959AB")
#VER MAIS DEPOIS



#########################################################STRINGS##############################################################################
nomes2 = c("Nicolly", "Goinski", "Da Silva")
paste(nomes[1], "é uma gostosa, por isso, seu sobrenome é", nomes2[2])
