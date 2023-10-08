str(dato3)
set.seed(1234)
ind <- sample(2, nrow(dato3), replace=TRUE, prob=c(0.7, 0.3))#
trainData <- dato3[ind==1,]#
testData <- dato3[ind==2,]#


library(party)
myFormula<- Calificación ~ Aprovechamiento+PuntualidadAsistencia+Participación
dato3_ctree <- ctree(myFormula,data=trainData)
table(predict(dato3_ctree),trainData$Calificación)
plot(dato3_ctree)
