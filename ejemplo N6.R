#libreria necesarias 

library(foreign)
library(ggplot2)
library(psych)
library(readxl)

#la notcia A 

"https://www.biobiochile.cl/noticias/vida-actual/padres-e-hijos/2019/11/11/crisis-social-en-chile-como-manejar-el-estado-emocional-de-tus-hijos-segun-su-edad.shtml"


#la noticia B "https://www.atcom.cl/4-positivos-acuerdo-constitucional-economia"



#importar datos 

palabras <- read_excel("ejercicio  6.xlsx")
palabras

#######grafico 1#######

plot(A ~ B, data = palabras)
palabrass <- lm(A ~ B, data = palabras)
abline(palabrass, col = "red")
# existe una relacion positiva entre la noticia A y la noticia B,ya que este una similitud entre las palabras utilizadas e¿para la redacion 
# de ambas notcias, esta no nesesariamente representa un mismo sentimiento o opinion (positivamente o negativamente).

######grafico 2#######













#########################################intento de realizarlo a traves de R (no me funciono)##########################
#instalacion de liberia r vest 
install.packages("rvest")
library('rvest')

#####dos artículos aristas totalmente distintas de la crisis social#############


m_crisis<- read_html("https://www.biobiochile.cl/noticias/vida-actual/padres-e-hijos/2019/11/11/crisis-social-en-chile-como-manejar-el-estado-emocional-de-tus-hijos-segun-su-edad.shtml")
#titulo de la noticia
titu_m_crisis<- m_crisis %>%
  html_node("title") %>%
  html_text()
#cuerpo de la noticia
p_m_crisis<- m_crisis %>%
  html_nodes("p") %>%
  html_text()

b_crisis<- read_html("https://www.atcom.cl/4-positivos-acuerdo-constitucional-economia")
#titulo de la noticia
titu_b_crisis<- b_crisis %>%
  html_node("title") %>%
  html_text()
#cuerpo de la noticia
p_b_crisis<- b_crisis %>%
  html_nodes("p") %>%
  html_text()

####ESTRACCION DE TEXTO###########
##########estraccion del primer texto ##########

#Ahora vamos a limpiar los datos
#El que buscamos, reemplazarlo por nada "" y eso lo quiero aplicar sobre

gsub(",","\\s",p_m_crisis)
texto <- gsub(",","\\s",p_m_crisis)

gsub("\n","\\s",p_b_crisis)
texto <- gsub("\n","\\s",p_m_crisis)

gsub ("[:punct:]","\\s",p_m_crisis)
texto <- gsub ("[:punct:]","\\s",p_m_crisis)

#Separando cada una de las palabras de dos parrafos 

splitEspacioTexto_m <- strsplit(p_m_crisis," ")[c(1)]
print(splitEspacioTexto_m)

#mayuscula y q se pueden repetir pero en minuscula, por lo tanto asi lo generalizo)

splitEspacioTexto_m <- tolower(splitEspacioTexto_m)

#contando palabras

listexto_m <- unlist(splitEspacioTexto_m)
print(listexto_m)
#unlist te enumera las palabras del texto

tablaPalabras_m <- table(listexto_m)
print (tablaPalabras_m)

#table(unlistTexto) este me cuenta las veces que se repite la palabra
dfPalabras <- as.data.frame(tablaPalabras_m)


##############estraccion del segundo texto ###########

gsub(",","\\s",p_b_crisis)
texto <- gsub(",","\\s",p_b_crisis)

gsub("\n","\\s",texto)
texto2 <- gsub("\n","\\s",texto)

gsub("\rs","\\s",texto2)
texto3 <- gsub("\rs","\\s",texto2)


splitEspacioTexto_b <- strsplit(texto3," ")[c(2)]

tablaPalabras<- table("splitEspacioTexto_b")
dfPalabras_b <- as.data.frame(splitEspacioTexto_b)
print(dfPalabras)
#mayuscula y q se pueden repetir pero en minuscula, por lo tanto asi lo generalizo)

splitEspacioTexto_b <- tolower(splitEspacioTexto_b)

#contando palabras

listexto_b <- unlist(splitEspacioTexto_b)
print(listexto_b)

#unlist te enumera las palabras del texto
dim(listexto_b )

summary("listexto_b")

tablaPalabras_b<- table("listexto_b")
tablaPalabras_b

print (splitEspacioTexto_b)
#table(unlistTexto) este me cuenta las veces que se repite la palabra
dfPalabras <- as.data.frame(tablaPalabras_b)







