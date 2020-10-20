#Uebung 0
#ein paar Rechnungen
a <- 5/(5+345)
b <- sin(90)
c <- sqrt(16)+sqrt(25)
d <- (a+b)/c
d


#bestimmten Vektor erzeugen
?seq
seq(from=0,to=1, by=0.1)
vec_a <- seq(0,1,0.1)

?rep
rep(c(1,5), c(5,3))

vec_a+1
(vec_a+1)*2

#Was ist das Besondere an Vektorrechnung mit R?
c(1, 3, 7) * c(5, 8, 2)
#normale Vektormultiplikation, aber ohne aufaddieren aller KOmponeneten

c(1, 3, 7) %*% c(5, 8, 2)
#hier werden die Komponenten addiert
#NORMALE Vektormultiplikation

#Erzeuge eine Matrix ( ?matrix ) mit den Zahlen von 1 bis 12 
#mit 1 2 3 in der ersten Zeile. Ersetze die 5
#durch 15 und multipliziere die entstehende Matrix mit 4. Was passiert?

?matrix
matrix(c(1,2,3,4,5,6,7,8), nrow=2, ncol=4, byrow=TRUE)
