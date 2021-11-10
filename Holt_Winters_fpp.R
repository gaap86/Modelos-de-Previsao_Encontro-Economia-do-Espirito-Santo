#Holt-Winters
data("austourists") # quarterly visitor nights in Australia spent by
#international tourists.
aust <- window(austourists,start=2005)

#Gráfico
plot(aust,ylab="Visitor Nights (millioins)",xlab="Year")
# Gráfico Sazonal
seasonplot(aust)

#Estimação e Previsão
modelo.ad <- hw(aust, h=12, seasonal = "additive",level = c(60,80, 95))
print(modelo.ad$model)
#modelo.mult <- hw(aust, h=12, seasonal = "multiplicative") - MULTIPLICATIVO


# Gráfico
autoplot(modelo.ad,ylab="Visitor Nights (millioins) ",xlab="Year") +
  autolayer(fitted(modelo.ad), series="Fitted")




