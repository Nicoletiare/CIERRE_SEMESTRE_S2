ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)

#######ejercicio 1#######

nombres=unique(unlist(ejemplos))
nombres
"neutros" "negativo" "positivo"
for(i in 1:length(nombres)) {
  index=sapply(ejemplos, function(x) match(nombres[i],x,nomatch =0) > 0)
  cat(nombres[i],"esta en la(s) listas(s)",which(index),"\n")
}
ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)

#ejercicio 2#
set.seed(10)
ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)
nombres=unique(unlist(ejemplos))
nombres
"neutros" "negativo" "positivo"

for(i in 1:length(nombres)) {
  index=sapply(ejemplos, function(x) match(nombres[i],x,nomatch =0) > 0)
  cat(nombres[i],"esta en la(s) listas(s)",which(index),"\n")
}
# respuesta:En R usamos set.seed(10) para inicializar el generador de números aleatorios en 10.
#El número que le ponemos a set.seed es arbitrario pero debe ser un número entero.
# la función set.seed en R se utiliza para reproducir resultados, es decir, produce la misma muestra
#una y otra vez. Cuando generamos números de randoms sin la función set.seed (), 
#producirá diferentes muestras en diferentes momentos de ejecución. veamos cómo generar una muestra 
#estable de números aleatorios con la función set.seed () en R con un ejemplo

#ejercicio 3
set.seed(66)
ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)
nombres=unique(unlist(ejemplos))
nombres
"neutros" "negativo" "positivo"
for(i in 1:length(nombres)) {
  index=sapply(ejemplos, function(x) match(nombres[i],x,nomatch =0) > 0)
  cat(nombres[i],"esta en la(s) listas(s)",which(index),"\n")
        }
length (ejemplos[ejemplos=="positivo"])
length (ejemplos[ejemplos=="negativo"])
length (ejemplos[ejemplos=="neutros"])

# en nuestro caso las noticas que se encuentra en una posicion 
#neutral son de 38 esto es notoraiamente superiro a la prosicion 
#negativa o positiva . por lo que en caso de no considerarla
# una baja importante de muestra y se csi se considera tendriamos 
# una mayor amplitud de los datos y con ellos una mejor representacion de 
#muestra .




