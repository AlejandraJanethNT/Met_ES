# Alejandra Janeth Nuñez Treviño <33
# 21/08/2023
# Matricula: 2070873

# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)

setwd("C:/Met_Es/Codigos")
Plantacion <-read.csv("Tab.csv", header = TRUE)

# Descriptivas ------------------------------------------------------------

# Usar la libreria dpylr para seleccionar datos mediante 
# restricciones 


library(dplyr)
a <- Plantacion %>% 
  filter(Tratamiento == "a")

b <- Plantacion %>% 
  filter(Tratamiento == "b")

mean(a$IE)
mean(b$IE)

Descriptivo <- Plantacion %>% 
  group_by(Tratamiento) %>% 
  summarise(
            n = n (),
            media = mean(Altura),
            mediana = median(Altura), 
            sd = sd(Altura), 
            var = var(Altura)
  )
Descriptivo 

# Grafica -----------------------------------------------------------------

boxplot(Plantacion$Altura ~ Plantacion$Tratamiento,
        xlab = "Tratamiento",
        ylab = "Indice Esbeltes",
        main = "vivero",
        col = "pink")


t.test(Plantacion$Altura ~ Plantacion$Tratamiento, var.equal = T)

# Conclusiones ------------------------------------------------------------

#Al comparar las graficas a y b en sus tratamientos note que el segundo tratamiento tenia un desarrollo mas rapido
#Por tanto el segundo tratamiento es mas apto 

