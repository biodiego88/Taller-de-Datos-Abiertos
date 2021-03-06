########### Pr�ctica ODD 2019 SCiAC ############

# Set directorio de trabajo #

setwd("c:/RAnalysis/PracticaODD")

# Asignamos identificar "bd" para nuestra base de datos #

bd = read.csv("Practica_ODD19_SCiAC_errores.csv", sep=";", header= T)

bd

class(bd)

summary(bd)

head(bd)

summary(bd)

summary(tc)

# Calculamos el promedio y la desviaci�n est�ndar de nuestra variable de inter�s (Temperatura corporal), utilizamos 
# "na.rm=T" para que no tenga en cuenta los NA #

mean(bd$Ta_corporal, na.rm = T)

sd(bd$Ta_corporal, na.rm = T)

# la desviaci�n est�ndar alta nos indica que los datos no se agrupan cerca del promedio
# puede indicar datos at�picos o err�neos en la muestra #


# podemos hacer un resumen de los datos, para ver un resumen de los datos y ver los datos extremos#

summary(bd$Ta_corporal)

# podemos realizar tambien un gr�fico de cajas para identificar datos at�picos #

boxplot(Ta_corporal ~ Zona, data = bd, xlab="Zona", ylab="Temperatura corporal (�C)")

# Eliminamos esos datos at�picos con el argumento "outline=FALSE" para ver c�mo deber�a ser la 
# gr�fica en caso de que los datos at�picos sean err�neos #

boxplot(Ta_corporal ~ Zona, data = bd, xlab="Zona", 
        ylab="Temperatura corporal (�C)", outline=FALSE)

# calculamos el promedio y la SD para un subset de datos, en este caso especies para ver la diferencia
# entre un subset con datos at�picos y otro sin ellos #

mean(subset(bd, Sp == "sp2")$Ta_corporal, na.rm = T)

sd(subset(bd, Sp == "sp2")$Ta_corporal, na.rm = T)

mean(subset(bd, Sp == "sp5")$Ta_corporal, na.rm = T)

sd(subset(bd, Sp == "sp5")$Ta_corporal, na.rm = T)


boxplot(Ta_corporal ~ Actividad2, data = bd, subset = Sp == "sp2", col = "lightgray", 
        notch=T, xlab="Zona", ylab="Temperatura corporal (�C)")

boxplot(Ta_corporal ~ Actividad2, data = bd, subset = Sp == "sp2", col = "lightgray", 
        notch=T, xlab="Zona", ylab="Temperatura corporal (�C)", outline=FALSE)

tc=bd$Ta_corporal

ts=bd$Ta_sustrato

plot(tc, ts, xlab="Temperatura sustrato", ylab="Temperatura corporal", pch=19)


#Realizamos la misma evaluaci�n b�sica para los datos corregidos #

bd_corregido = read.csv("Practica_ODD19_SCiAC_corregido.csv", sep=";", header= T)


mean(bd_corregido$Ta_corporal, na.rm = T)

sd(bd_corregido$Ta_corporal, na.rm = T)

summary(bd_corregido$Ta_corporal)

boxplot(Ta_corporal ~ Zona, data = bd_corregido, xlab="Zona", ylab="Temperatura corporal (�C)")

boxplot(Ta_corporal ~ Zona, data = bd_corregido, xlab="Zona", ylab="Temperatura corporal (�C)", outline=F)

tc=bd_corregido$Ta_corporal

ts=bd_corregido$Ta_sustrato

plot(tc, ts, xlab="Temperatura sustrato", ylab="Temperatura corporal", pch=19)

