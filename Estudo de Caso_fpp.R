#Holt-Winters
data(AirPassengers)

# Análise Inicial da série
plot(AirPassengers)

##################### Estimando o modelo ###############
#Estimando
modelo.ad <- hw(AirPassengers,seasonal = "additive")

#Métricas para avaliação
accuracy(modelo.ad)

#################### Análise dos resíduos ################################
residuo <- residuals(modelo.ad)
# Análise Gráfica
checkresiduals(residuo)

# Teste de Ljung-Box
Box.test(residuo, lag=10,  type="Lj")

#Normalidade
tseries::jarque.bera.test(na.remove(residuo))



