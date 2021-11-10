############## Decomposição clássica
data(elecequip)
plot(elecequip)

decomp <- decompose(elecequip,type="additive")
plot(decomp)

#Componentes individuais
decomp$seasonal
decomp$trend
decomp$random

y_dessaz <- elecequip - decomp$trend
plot(y_dessaz)









