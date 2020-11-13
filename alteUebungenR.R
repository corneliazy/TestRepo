#Uebung 0
#ein paar Rechnungen
a <- 5/(5+345)
b <- 2*sin(90)
b
b_2 <- 2* sin(pi/2)
b_2
c <- sqrt(16)+sqrt(25)
d <- (a+b_2)/c
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
#ELEMENTWEISE MULTIPLIKATION


c(1, 3, 7) %*% c(5, 8, 2)
#hier werden die Komponenten addiert
#NORMALE Vektormultiplikation
#SKALARPRODUKT

#Erzeuge eine Matrix ( ?matrix ) mit den Zahlen von 1 bis 12 
#mit 1 2 3 in der ersten Zeile. Ersetze die 5
#durch 15 und multipliziere die entstehende Matrix mit 4. Was passiert?

?matrix
mat <- matrix(c(1:12), ncol=3, byrow=TRUE)
mat[mat==5] <- 15
mat <- mat*4
mat

#was soll passieren???

#Weise einer Variablen den Wert 12 zu und erstelle einen 
#Vektor mit den Werten 1,2,3,10,100.
#Multipliziere beide miteinander und speichere das Ergebnis 
#als Objekt z. Bilde anschließend die Summe aller Elemente von z.

var_12 <- 12
vector <- c(1,2,3,10,100)
z <- var_12*vector
z
sum(z)

#sequenz erzeugen, Funktion zeichnen, wobei x die Sequenz ist. 
#Wie sehen bestimmte Funktionen aus?

?seq
seq <- seq(from=-3, to=3, by=0.1)
seq
x<-seq
y <- x*x
plot(x=x, y=y)

y <- 1-x^2
plot(x=x, y=y)

y <- 5+x^2
plot(x=x, y=y)

#Erzeuge zwei Vektoren mit folgenden Daten: 
#t enthält Mo, Di, Mi, Do, Fr, Sa und m enthält 92, 80, 60, 20, 10, 50. 
#Verbinde beide Vektoren spaltenweise zu einem data.frame und weise diesem 
#den Namen studie zu; vergebe die Spaltennamen “Motivation”" für m und “Wochentag” für t. 
#Füge am unteren Ende eien Zeile mit den Elementen So, 100 hinzu.

t <- c("Mo", "Di", "Mi", "Do", "Fr", "Sa")
m <- c(92,80,60,20,10,50)

?data.frame
studie <- data.frame(t,m, check.rows=TRUE)
colnames(studie) <- c("Wochentag", "Motivation")

?rbind
new_row <- c("So", 100)
rbind(studie, new_row)

load("C:/Users/Cornelia/Documents/Studium/Bachelor/2. Semester/Geostatistik/Geostatistik Übungen/students.rdata")
summary(students)

#134 Teilnehmer
#Variablen: Gender, EyeColor, Age, Length, Weight, Iam,
#Country, FielOfStudies, Semester


#Uebung 1
data(iris)
head(iris)
summary(iris)


#Mittelwert fuer Sepal.Length
iris$Sepal.Length
mean(iris$Sepal.Length)
#oder:
meanval <- sum(iris$Sepal.Length)/length(iris$Sepal.Length)
meanval

#Standardabweichung fuer Sepal.Length
sd(iris$Sepal.Length)
#oder:

helpvar <- 0
for(i in 1:length(iris$Sepal.Length))
  helpvar <- helpvar+((iris$Sepal.Length[i]-meanval)^2)
variance <- helpvar/length(iris$Sepal.Length-1)
standarddev <- sqrt(variance)
standarddev

sqrt(sum)
#Median fuer Sepal.Length
median(iris$Sepal.Length)

quantile(iris$Sepal.Length,c(0.1,0.5,0.9))


#Haufigkeit der Variable Species
head(iris)
summary(iris$Species)

#loading rdata file
load(file="C:/Users/Cornelia/Documents/Studium/Bachelor/2. Semester/Geostatistik/Geostatistik ?bungen/students.Rdata")
ls()
summary(students)
str(students)


#fuer welche werte kann modalwert berechnet werden?
table(students$Gender) #Modalwert=m
table(students$EyeColor) #Modalwert = blue
table(students$Age) #21
sort(table(students$Length))#180 hier macht der modalwert keinen sinn, da die meisten Werte nur einmal gemessen werden.
sort(table(students$Weight))#60 hier macht der Modalwert auch keinen Sinn.
table(students$Iam)#medium
table(students$Country)#Germany
table(students$FieldOfStudies)#Geography

hist(students$Length,plot=FALSE)
# haeufigster wert: 180
# Anzahl Studenten groe?er als 150 und kleiner als 170 cm: 6??
# Studenten kleiner oder gleich 180: 85

#dataframe$neuerSpaltenname fuegt Datensatz neue Spalte hinzu
students$bmi = students$Weight/(students$Length/100)^2
head(students)

#ueber welchem Wert des BMI liegen 75% der BMI Werte?
?quantile
quantile(students$bmi, 0.25, na.rm=TRUE)

#welcher Prozentsatz liegt ?ber 25?
?which
length(students$bmi)
length(students)

head(students)
students$Weight
summary(students)
filter1 <- students[students$Weight > 65 & students$Length > 170, ]
summary(students)
filter2 <- students[students$Weight > 65 && students$Length > 170, ]

summary(filter1)
summary(filter2)

#dies ist eine aenderung für github
