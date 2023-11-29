# Conjunto de datos para correlacion
# Alejandra Janeth Nuñez Treviño
# 26/09/2023

# Crear la base de datos

x <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
y <- c(9.14,8.14,8.74,8.77,9.26,8.10,6.13,3.10,9.13,7.26,4.74)

# Crear un data.frame con las variables x and y

d2 <- data.frame(x,y)
d2 

#Estadisticas descriptivas 

mean(d2$x); var(d2$x)
mean(d2$y); var(d2$y)
# x
# mean: 9
# var:  11
# y
# mean: 7.500909
# var:  4.127629

# Aplicar correlacion 

cor.test(d2$x, d2$y)
# Cor: 0.8162365

# Cuarteto de ANSCOMBE 

# Grafica 

plot(d2$x, d2$y,
     pch= 19,
     xlab = "Valor x",
     ylab = "Valor y")









