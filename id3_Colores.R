str(colores)
set.seed(1234)
ind <- sample(2, nrow(colores), replace=TRUE, prob=c(0.7, 0.3))
trainData <- colores[ind==1,]
testData <- colores[ind==2,]


library(party)
myFormula<- Clase ~ Color+Forma+Tamaño
colores_ctree <- ctree(myFormula,data=trainData)
table(predict(colores_ctree),trainData$Clase)
plot(colores_ctree)