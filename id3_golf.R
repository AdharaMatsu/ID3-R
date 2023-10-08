str(golf)
set.seed(1234)
ind <- sample(2, nrow(golf), replace=TRUE, prob=c(0.7, 0.3))
trainData <- golf[ind==1,]
testData <- golf[ind==2,]


library(party)
myFormula<- Clase ~ Ambiente+Temperatura+Humedad+Viento
golf_ctree <- ctree(myFormula,data=trainData)
table(predict(golf_ctree),trainData$Clase)
plot(golf_ctree)