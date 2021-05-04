setwd("C:/curso-dsa/scriptsR")
getwd()

notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

#Exercicio 1
View(notas)
str(notas)
summary(notas)

#Exercicio 2
mean(notas$TurmaA)
mean(notas$TurmaB)

#Exercicio 3
sd(notas$TurmaA)
sd(notas$TurmaB)

#Exercicio 4
coefVarA <- sd(notas$TurmaA) / mean(notas$TurmaA)*100
print(coefVarA)

coefVarB <- sd(notas$TurmaA) / mean(notas$TurmaB)*100
print(coefVarB)

#Exercicio 5
moda <- function(v) {
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

moda(notas$TurmaA)
moda(notas$TurmaB)


