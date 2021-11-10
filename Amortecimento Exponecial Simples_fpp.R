# Amortecimento Exponencial
data("oil")
oildata <- window(oil, start=1996)

#EStimando o modelo e realizando as previsões
modelo <- ses(oildata, h=3)
modelo$model

# Gráfico
autoplot(modelo,ylab="Oil production in Saudi Arabia",xlab="Year") +
  autolayer(fitted(modelo), series="Fitted")

#Valores previstos
print(modelo)



