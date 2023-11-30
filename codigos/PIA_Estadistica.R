# Alejandra Janeth Nuñez Treviño
# 28/11/2023
# Peso de pedazos de papa en soluciones a diferentes concentracion de sacarosa
# Longitud (Largo) de 3 cm

setwd("C:/Mariana_SIG_5to2023/Met_Es/codigos")
temperaturas <-read.csv("Temperaturas_NOV.csv", header = TRUE)
head(temperaturas)
data.frame(temperaturas)

mean(temperaturas$Tmax) # 23.36667
mean(temperaturas$Tmin) # 14.58333
var (temperaturas$Tmax) # 60.1623
var (temperaturas$Tmin) # 36.68282
sd (temperaturas$Tmax) # 7.756436
sd (temperaturas$Tmin) # 6.056634

t.test(temperaturas$Tmax,mu) 
t.test(temperaturas$Tmin,mu) 
cor.test(temperaturas$Tmax, temperaturas$Tmin)

# t = 5.4702, df = 28, p-value = 7.683e-06
#  cor 0.7187484 
# Hipotesis alternativa: la verdadera correlación no es igual a 0
# Hipotesis nula: La correlacion es 0

boxplot(temperaturas$Tmax, col = "pink", ylab = "temperaturas", main = "Tmax")
boxplot(temperaturas$Tmin, col = "red", ylab = "temperaturas", main = "Tmin")


plot(temperaturas$Tmax,temperaturas$Tmin, 
     pch= 11)

summary(temperaturas)
# Tmax            Tmin      
# Min.   : 7.90   Min.   : 6.60  
# 1st Qu.:17.70   1st Qu.:10.28  
# Median :24.85   Median :13.20  
# Mean   :23.37   Mean   :14.58  
# 3rd Qu.:30.77   3rd Qu.:19.82  
# Max.   :33.10   Max.   :30.00 


