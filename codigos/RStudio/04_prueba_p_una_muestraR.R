# Correlacion 
# Alejandra Janeth Nuñez treviño


# Importar ----------------------------------------------------------------

setwd "C:/Mariana_SIG_5to2023/Met_Es/codigos"
canopy <-read.csv("canopy_short.csv", header = T)
canopy$Forest <-as.factor(canopy$Forest)


# Grafica -----------------------------------------------------------------
cor.test(cnpy$LAI4, cnpy$GLI)
plot(cnpy$Cnpy$LAI4,
     xlab = "Apertura dosel (%)",
     ylab = "Area Foliar",
     col = "Blue sky"
     pch = 19
     main = "Bosque Escuela")

text(25,1.2, "r = -0.83***")

cor.test(cnpy$Cnpy, cnpy$LA)



