vetor <- c(4, 2, 1, 5, 3)
min_valor <- vetor[1]


for (i in vetor) {
  if (i < min_valor) {
    min_valor <- i
  }
}

print(paste("O valor mínimo do vetor é:", min_valor))
