z <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)


a <- z[z >= 5]
b <- z[z < 6 + 2]
c <- z[z != 6]
d <- z[z > 5 | z == 2]
e <- subset(z, z <= 6 & z != 4)


print("a) maior ou igual 5:")
print(a)
print("\nb) menor do que 6+2:")
print(b)
print("\nc) diferentes de 6:")
print(c)
print("\nd) maior do que 5 ou igual a 2:")
print(d)
print("\ne) menor ou igual a 6 e diferente de 4:")
print(e)

