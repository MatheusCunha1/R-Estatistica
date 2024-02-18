nums <- c(3, 2, 1, 3, 3, 4, 1, 5, 4, 9)

nova_lista <- list(
  facs = 4,
  nums = nums
)

# a) Extração dos elementos 
facs_maiores_igual_3 <- ifelse(nova_lista$facs >= 3, nova_lista$facs, NA)

# b) Adição do novo membro "lags
matriz_logica <- matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE,
                          FALSE, TRUE, FALSE, TRUE, FALSE, TRUE,
                          TRUE, FALSE, TRUE, FALSE, TRUE, FALSE),
                        nrow = 3, byrow = TRUE)

flags <- rep(matriz_logica[, 3], each = 2)
nums_false <- nums[!flags]

print(paste("a) Elementos de 'facs' correspondentes aos elementos de 'nums' maiores ou iguais a 3:", facs_maiores_igual_3))
print(paste("b) Vetor 'flags':", flags))
print(paste("   Entradas de 'nums' correspondentes a FALSE:", nums_false))
