
#un maso de carta posee 48 cartas (sin joker)
# se juega contra Croupiere 
# la banca se plantea en 21
# 14 es igual a A 
# 13 es igual a K
# 12 es igual a Q
# 11 es igual a J
set.seed(48)
cartas=c(14,14,14,14,13,13,13,13,12,12,12,12,11,11,11,11,10,10,10,10,9,9,9,9,8,8,8,8,7,7,7,7,6,6,6,6,5,5,5,5,4,4,4,4,3,3,3,3,2,2,2,2)
# la primera partida la cuenta correinte se encuentra en 0 

C.corriente<-0

# asignacion HI-LO

for (i in 1:length(lanzamiento_1)){
  if(lanzamiento_1[i]==2|lanzamiento_1 [i]==3|lanzamiento_1 [i]==4|lanzamiento_1 [i]==5|lanzamiento_1 [i]==6) {
    C.corriente<-C.corriente+1 } else if (lanzamiento_1 [i]==14|lanzamiento_1 [i]==13|lanzamiento_1 [i]==12|lanzamiento_1 [i]==11|lanzamiento_1 [i]==10){
      C.corriente<-C.corriente-1} else if (lanzamiento_1 [i]==7|lanzamiento_1 [i]==8|lanzamiento_1 [i]==9){
        C.corriente<-C.corriente+0
      }
}
# se define como lanzamiento 1 a todo los lanzamientos desde el comienzo a hasta que salieron 31 cartas.
lanzamiento_1 <- sample(cartas,31,F)
lanzamiento_1
C.corriente

#cuenta corrriente es positivo por lo que es mas problame que salgan cartas grande (correspondiente a -1), estas favorece al jugador ya que aumenta la posibilidades 
# de ganar y obtener 21.

lanzamiento_2 <- [!is.na(lanzamiento_1)]
lanzamiento_2
lanzamiento_1 - lanzamiento_2


