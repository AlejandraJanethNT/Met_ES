# Alejandra Janeth Nuñez Treviño <33
# 21/08/2023
# Matricula: 2070873

# Importar datos ----------------------------------------------------------
# Funcion read.csv (sirve para importar datos csv a R)
setwd("C:/Met_Es/Codigos")
mediciones <-read.csv("mediciones.csv", header = TRUE)
head(mediciones) # Funcion head (sirve para ver los primeros 6 datos)

# Descriptivas ------------------------------------------------------------
# medidas de tendencia central media, mediana, rango

mean(mediciones$altura) #Moda
median(mediciones$altura) #Mediana
range(mediciones$altura) #Rango
fivenum(mediciones$altura) #Representa los 5 numeros del boxplot

# medidas de dispersión desviacion estándar, varianza

sd(mediciones$altura)
var(mediciones$altura)

# Gráficas ----------------------------------------------------------------

boxplot(mediciones$altura,col = "blue", ylab = "altura (cm)", main = "Sitio 1", ylim = c(6,14))

# Hipótesis ---------------------------------------------------------------

# xobs 10.17 vs xteo=11
# Todos los cedros no alcanzaron los 11 cm.
# El valor de alfa referencia es 0.05

# Procedimiento -----------------------------------------------------------
# Aplicar la función de t.test (Nunca se pone la media, se ponen los datos de origen)
t.test(mediciones$altura,mu=11)
# "df" significa grados de libertad
t.test(mediciones$altura,mu=10.5)
t.test(mediciones$altura,mu=10.6)
t.test(mediciones$altura,mu=10.55)

# Replicabilidad ----------------------------------------------------------

# Guardar la prueba de ten un objeto llamado "prueba"
prueba<-t.test(mediciones$altura, mu=11)

# Conocer los grados de libertad
prueba$parameter
# Conocer el p-value
prueba$p.value
# Se acepta la H1
# Conocer los intervalos de confianza
prueba$conf.int