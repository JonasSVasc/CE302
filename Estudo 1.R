#VETORES LÓGICOS 

x = c(3,4,5,6,2)
vetor_lógico = x >3
vetor_lógico

novo_vetor = x[vetor_lógico]
novo_vetor
#Para fazer a filtragem, você cria uma condição, e depois coloca o vetor(condição)
#Ou você pode simplesmente usar a condição x(aqui), assim n precisa criar uma variável para o filtro
vetor_filtrado = x[x>=3]
vetor_filtrado

#Utilização de argumentos lógicos "&" e"|" para estruturas mais complexas

preços = c(15,24,13,32,65)
condição1 = preços < 15
condição2 = preços >= 32
condição_final = condição1 | condição2
condição_final
preços_bons = preços[condição_final]
preços_bons
#também poderiamos aplicar o argumento lógico direto no vetor final
preços_bons2 = preços[preços <= 13 | preços >= 32]
preços_bons2


#INFORMAÇÕES FALTANTES
dados = c(2,5, NA, 6, NA, 1, 4, 5)
#Olhando esse vetor, temos um certo problema, possuimos um dado faltante e um dado não numérico
#Como lidamos com isso ?

#Podemos simplesmente excluir os dados faltantes



valor_máximo = max(dados, na.rm = TRUE)


dados[is.na(dados)] = valor_máximo
dados
