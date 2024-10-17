#MATRIZES

#Matrizes são composta pela união de vetores

vetorA = c(1,3,5)
vetorB = c(3,2,6)
vetorC = c(2,1,4)

matrizA = rbind(vetorA, vetorB, vetorC)
matrizA
#Muito fácil, né? 
#Você pode criar matrizes matrizes dessa forma, levando as linhas delas como fator principal, ou
#Pode criar dessa forma

matrizB = cbind(vetorA, vetorB, vetorC)
matrizB
#Levando as coluas como principal 



matrizA - matrizB
matrizA** matrizB

#Também podemos cirar matrizes com a função matrix
#a função tem como arguentos c(argumento gerador de dados), ncol = número de colunas que você quer 

matrizC = matrix(c(1:9),
                 ncol = 3,
                 byrow = T)
matrizC

#podemos decidir a distribuição dos elementos da matriz com byrow = T, ou byrow = F
#byrow = T serve pros valores serem distribuidos na ordem das linhas

#Outros exemplos de criação de matrizes com matrix

matrizN = matrix(c(rnorm(8)),
                   ncol = 2, byrow = T)
matrizN

#Você também pode criar matrizes dessa forma:

matrizD = matrix(c(4, 4, 6,
                   4, 5, 8,
                   2, 1, 7),ncol = 3, byrow = F)
matrizD
#Ai pra tu selecionar um item da matriz, você pode fazer 
matrizD[1,3]
#sacou?, e isso é pra qualquer matriz
matrizN[3,2]

#Igual a lógica dos vetores, tem como filtrar itens dessa forma:
matrizD[matrizD>3]
matrizD[which(matrizD>3)]

#PERGUNTAR SOBRE O WHICH, E QUAL A DIFERENÇA DELE PRA FILTRAR NORMALMENTE 

#Se você faz
matrizD[,]
#você mostra ela inteira
matrizD[1,]
#você mostra só a primeira linha 
matrizD[,1]
#Assim é só a primeira coluna
matrizD[,-3]
#assim mostra tudo, tirando a tericera coluna
matrizD[-3,]
#assim mostra tudo menos a terceira linha 
matrizD[-(1:2),]
#assim mostra somente a terceira linha 









matrizD
matrizD[matrizD < 5 ]
teste = matrizD[which(matrizD == 7)]




matrizT = matrix(c(1:9),
                 ncol = 3)

matrizT

elementos_linha_1_maior_que_2 <- matrizT[1, which(matrizT[1, ] > 2)]
elementos_linha_1_maior_que_2

matrizT = matrix(c(3, 2, 1,
                    3, 3, 3,
                    4, 2, 2),
                  ncol = 3)

elemtoos_iguais_a_3 = matrizT[which(matrizT == 3)]
elemtoos_iguais_a_3

#Com matrizes, podemos fazer operações matemáticas, como soma subtração, etc

matrizD
matrizA 

matrizD - matrizA
