# Alejandra Janeth Nuñez Treviño
# Correlacion
# 02/10/2023

library (repmis)
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1") 


# Estadisticas descriptivas -----------------------------------------------

# Realizar las estadísticas descriptivas de ambas variables (media, desviación estándar y varianza)

 mean(erupciones$eruptions)  # 3.487783
 mean(erupciones$waiting)   #  70.89706
 
 var(erupciones$eruptions) # 1.302728
 var(erupciones$waiting) # 184.8233 
 
 sd (erupciones$eruptions) # 1.141371 
 sd (erupciones$waiting) # 13.59497

# Correlacion  ------------------------------------------------------------

 # ¿Cuál es el coeficiente de correlación (r)?
  
cor.test(erupciones$eruptions, erupciones$waiting)http://127.0.0.1:41711/graphics/plot_zoom_png?width=1082&height=900
# t = 34.089, df = 270, p-value < 2.2e-16
 # cor  0.9008112  
 
  # ¿Es significativa la correlación? Si porque es mayor que 0.5 por tanto no se puede rechazar
 

# Grafica -----------------------------------------------------------------http://127.0.0.1:41711/graphics/plot_zoom_png?width=1066&height=597

 plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)",
      ylab = "Duración de las erupciones (min)", pch = 11, col = "Pink")
 # abline sirve para desplegar la linea de tendencia central
 abline(erup.lm,
        col = "red")
 range(erupciones$waiting) #  43 96
 
 erup <- C(80, 43, 45, 53, 61, 95)
 
ypr <- -1.874 + 0.075* erup
erup
y.pr

-1.874016 + 0.075628* 80 # 4.176224
-1.874016 + 0.075628* 43 # 1.377988
-1.874016 + 0.075628* 45 # 1.529244
-1.874016 + 0.075628* 53 # 2.134268
-1.874016 + 0.075628* 61 #  2.739292
-1.874016 + 0.075628* 95 # 5.310644

# El rango de los valores de x son mi ventana de prediccion de yprima
# range (erupciones$waiting)
range (erupciones$waiting) # 43 96


erup.lm <- lm (erupciones$eruptions ~ erupciones$waiting)
 
erup.lm # Obtenemos el valor de alfa y beta

summary(erup.lm) # Obtener la significancia 

 
 # el INTERCEPTO es alfa, 3 valores so  significativos

erupciones$yprima <- -1.874 + 0.075* erupciones$eruptions

erupciones$estimados <- erup.lm$fitted.values
 
# Hipotesis ---------------------------------------------------------------

# Hipotesis nula: La correlacion es igual 0
 # Hipótesis alternativa: la correlación verdadera no es igual a 0. 
 

# Conclusion  -------------------------------------------------------------

# La hipotesis correcta es la alternativa ya que si es significativo dado que es mayor que 0.5 
 # Teniendo esta un valor de 0.9008
 
 