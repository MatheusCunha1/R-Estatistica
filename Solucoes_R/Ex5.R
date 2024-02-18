verificar_classe <- function(valor) {
  if (is.numeric(valor) || is.integer(valor)) {
    return(valor)
  } else if (is.character(valor)) {
    return("palavra")
  } else {
    return(NULL)
  }
}

print(verificar_classe(1))      
print(verificar_classe("Fundamentos em R")) 
print(verificar_classe(TRUE))    