############  Análise dos resíduos #############
data("elecequip") #lendo dados 
modelo.naive <- naive(elecequip) # estimando o modelo Naive
residuo <- residuals(modelo.naive) # obtendo os resíduos do modelo

# Análise Gráfica
checkresiduals(residuo)

# Teste de Ljung-Box
Box.test(residuo, lag=10,  type="Lj")

#Normalidade
tseries::jarque.bera.test(na.remove(residuo))



