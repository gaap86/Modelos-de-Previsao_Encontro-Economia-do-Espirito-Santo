# Holt 2 Parâmetros
data("ausair")
air <- window(ausair, start=1990)
plot(air)

# Estimando o modelo & realizando as previsões.
modelo <- holt(air,h=5,level = c(80,90))
modelo$model

# Gráfico
autoplot(modelo,ylab="total annual passengers in Australia ",xlab="Year") +
  autolayer(fitted(modelo), series="Fitted")

#Valores previstos
print(modelo)

