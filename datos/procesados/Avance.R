library(readxl)
library(dplyr)
library(tidyr)

suicidios<- read_excel("C:/Users/clweb/Desktop/Trabajo/Trabajo_Let/datos/sin-procesar/suicide_total_deaths.xlsx")


suicidios_larga <- suicidios %>% pivot_longer(`1990`:`2016`,names_to="anio",values_to="muertes" ) %>% mutate(anio = as.numeric(anio))

dim(suicidios_larga)
  uicidios$country[1]

suicidios_larga$country=="Chile"
###############################################

Afganistan<-suicidios_larga[(1:27),]#asi   1
Armenia<-suicidios_larga[(190:216),]#asi   8
Azerbaijan<-suicidios_larga[(271:297),]#asi 11
Bahrain<-suicidios_larga[(325:351),]#asia   13
Bangladesh<-suicidios_larga[(352:378),]#asia 14
Bhutan <-suicidios_larga[(514:540),]#ASIA

#####################################################

Algeria<-suicidios_larga[(55:81),]#africa  3
Angola<-suicidios_larga[(109:135),]#africa  5
Belize <-suicidios_larga[(487:513),]#AFRICA

########################################################

Andorra<-suicidios_larga[(82:108),]#europa  4
Albania<-suicidios_larga[(28:54),]#europa   2
Austria<-suicidios_larga[(244:270),]#europa 10
Belarus<-suicidios_larga[(406:432),]#europa
Belgica<-suicidios_larga[(433:459),]#europa

#######################################################

Bahamas<-suicidios_larga[(298:324),]#caribe america 12
AB<-suicidios_larga[(136:162),]#caribe america   6
Argentina<-suicidios_larga[(163:189),]#America   7
Belize <-suicidios_larga[(460:486),]#AMERICA 
Bolivia<-suicidios_larga[(541:567),]#America


###################################################

Australia<-suicidios_larga[(217:243),]#OCEANIA 9

########################################################################



Bolivia<-suicidios_larga[(568:594),]#America





America<-c(Bahamas,AB,Argentina,Belize)
mean(America$muertes)

promedio.muertes<-c()


for(i in 1:lenght(America)){
  
  
  
  
}

Afg<-suicidios[1,]
suicidios[45,]

Cyprus<-suicidios[45,]

plot(as.numeric(Cyprus[-1]),xlab = "Años",ylab = "Cantidad de Suicidios",main = "Cantidad de Suicidios en Cyprus",col=2)

plot(as.numeric(Afg[-1]),xlab = "Años",ylab = "Cantidad de Suicidios",main = "Cantidad de Suicidios en Afghanistan",col=1)


mean(suicidios_larga$muertes)





