# Definir a função de umidade
umidade <- function(t) {
  exp(-0.365 * t^0.663)
}

# Calcular os tempos e umidades usando vetores e a função `seq()` para os tempos
tempos <- seq(0, 15, by = 0.1)
umidades <- umidade(tempos)

# Filtrar os valores onde a umidade é maior ou igual a 0.13
resultado <- data.frame(tempo = tempos[umidades >= 0.13], umidade = umidades[umidades >= 0.13])

print(resultado)
