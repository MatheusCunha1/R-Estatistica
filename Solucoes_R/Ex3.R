# Criando os elementos 
sequencia <- seq(-4, 4, length=20)
matriz_logica <- matrix(c(F, T, T, T, F, T, T, F, F), nrow=3, ncol=3, byrow=TRUE)
vetor_caractere <- c("don", "quixote")
observacoes <- factor(c("LOW", "MED", "LOW", "MED", "MED", "HIGH"))
minha_lista <- list(sequencia, matriz_logica, vetor_caractere, observacoes)


linhas <- c(2, 1)
colunas <- c(2, 3)

# A) Extração de elementos da matriz
elementos <- minha_lista[[2]][linhas, colunas]
print(elementos)

# B) Extração de elementos da matriz
valores_maiores_que_1 <- sequencia[sequencia > 1]
print(valores_maiores_que_1)
