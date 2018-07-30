#########################################################################
#Autor: Raphael Demostenes Cardozo - Email: raphaeldemostenes@gmail.com
#Trabalho final para a Disciplina de Financiamento da Educação
#Profa. Dra. Andrea Barbosa Gouveia
#Mestrando Em Educação - PPGE- PE - UFPR
#Título: A FILANTROPIA NA EDUCAÇÃO INFANTIL: O MUNICIPIO DE CURITIBA EM 2014 E 2017
#Versão Final:30/07/2018
#########################################################################
#   SCRIPT DE IMPORTAÇÃO E TRATAMENTO DA BASE DE DADOS                  #
#########################################################################
rm(list = ls())
getwd()
setwd ("C://r//fe")
save.image(file="impbase.RData")
##################################################################################################
#Resumo estatístico para o número de vagas por mantenedora(min,max,media,mediana, DP, 1oQ e 3oQ) #
##################################################################################################
xy<-c(94,88,372,126,183,74,96,83, 120,225,315,97,134,104,177,100,82,278,153,84,
105,792,80,171,222,115,234,128,105,100,27,425,36,104,74,86,286,230,371,97,98,109,
156,257,72,80,405,165,258)
summary(xy)
sd(xy)

#Coeficiente de Gini
install.packages("ineq")
library(ineq)
gastoaluno<- c(11310.57,4755.00,5871.42,4994.87,5254.70,4968.31,5121.54,5744.04,
4999.85,4625.52,4516.45,5114.54,4975.26,4832.18,5575.20,5050.81,9578.48,5272.04,
4520.46,4804.66,4964.27,5254.58,4598.47,5819.12,5422.16,5218.62,6961.45,5069.58,
5111.00,5012.60,5646.72,5266.65,4708.62,5346.21,5027.77,5950.72,5104.58,5121.50,
4999.87,5313.20,4743.27,5018.61,5044.58,7744.18,4774.18,5428.72,5039.47,4857.62,
5002.66)
ineq(gastoaluno , type="Gini")
#Curva de Lorenz
plot(Lc(gastoaluno),col="darkred",lwd=2)