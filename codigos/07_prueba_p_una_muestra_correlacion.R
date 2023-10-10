


# Importar datos
library(repmis)
 DAP <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1"
)
 DAP$Paraje <- as.factor(DAP$Paraje)
 DAP$sP <- as.factor(DAP$SP)
 
 
 # Determinar estadisticas descriptivas 
 
 
 boxplot(DAP$EDAD ~ DAP$Paraje)
 boxplot(DAP$DAP ~ DAP$Paraje)
 
 tapply(DAP$EDAD, DAP$Paraje, mean) # Chinatu    Laguna   Trinidad     Tule 
                                    #48.70000  30.70000  93.40000   53.13333 
 tapply(DAP$EDAD, DAP$Paraje, var)    # Chinatu    Laguna   Trinidad      Tule 
                                       # 837.3207  150.4931 1427.4897  998.2575 
 # Normalidad
 shapiro.test(DAP$DAP) # W = 0.96548, p-value = 0.003575, NO SON NORMALES 
 hist(DAP$DAP)
 bartlett.test(DAP$DAP ~ DAP$Paraje) # Bartlett's K-squared = 6.6622, df = 3, p-value = 0.08348
 
# Transformar DAP para cumplir normalidad 
 DAP$raiz <- sqrt (DAP$DAP)
 hist(DAP$raiz) 
 
 # Probar normalidad a los datos transformados (Raiz cuadrada)
 shapiro.test(DAP$raiz) # W = 0.98341, p-value = 0.1473

 # Probar homogeneidad de varianzas de los datos transforados 
 bartlett.test(DAP$raiz ~ DAP$Paraje) 
 # Bartlett's K-squared = 7.6911, df = 3, p-value = 0.05285
 
 dap.aov <- aov
 
 dap.aov <- aov(DAP$raiz ~ DAP$Paraje)
               # Df Sum Sq Mean Sq F value   Pr(>F) 
 # DAP$Paraje    3  84.09  28.029    33.2 1.45e-15 ***
  # Residuals   116  97.94   0.844   
summary (dap.aov) 
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
boxplot(DAP$raiz ~ DAP$Paraje,
        col = "pink")

# 84.09/3: 28.03
# 97.94/116: 0.8443103
# 28.029/0.844: 33.20972


# Encontrar las diferencias significativas 

TukeyHSD(dap.aov)
                   # diff          lwr        upr     p adj
# Laguna-Chinatu   -0.7331899 -1.351610796 -0.1147691 0.0131794
# Trinidad-Chinatu  1.5391985  0.920777631  2.1576194 0.0000000
# Tule-Chinatu     -0.1190328 -0.737453617  0.4993881 0.9585122
# Trinidad-Laguna   2.2723884  1.653967564  2.8908093 0.0000000
# Tule-Laguna       0.6141572 -0.004263685  1.2325780 0.0523230
# Tule-Trinidad    -1.6582312 -2.276652111 -1.0398104 0.0000000

plot(TukeyHSD(dap.aov))


 
 