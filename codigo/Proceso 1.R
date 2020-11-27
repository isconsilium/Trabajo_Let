library(readxl)
library(dplyr)
library(tidyr)
library(countrycode)


suicidios<- read_excel("C:/Users/clweb/Desktop/Trabajo/Trabajo_Let/datos/sin-procesar/suicide_total_deaths.xlsx")


suicidios_larga <- suicidios %>% 
  pivot_longer(`1990`:`2016`, names_to = "anio", values_to = "muertes") %>% 
  mutate(anio = as.numeric(anio)) %>% 
  mutate(continente = countrycode(sourcevar = country, 
                                  origin = "country.name",
                                  destination = "continent")) %>% 
  mutate(region = countrycode(sourcevar = country, 
                              origin = "country.name",
                              destination = "region"))



suicidios_larga$muertes<-suicidios_larga$muertes*1000

suicidios_larga

promedios <-suicidios_larga %>% 
  group_by(country) %>% 
  summarise(media = mean(muertes))


slice_max(promedios, media, n = 1)
slice_min(promedios, media, n = 1)


promedios <- promedios %>% 
  mutate(continente = countrycode(sourcevar = country, 
                                  origin = "country.name",
                                  destination = "continent")) %>% 
  mutate(region = countrycode(sourcevar = country, 
                              origin = "country.name",
                              destination = "region"))


names(promedios$region)

Europe<-which(promedios$continente=="Europe")
Asia<-which(promedios$continente=="Asia")
Americas<-which(promedios$continente=="Americas")
Oceania<-which(promedios$continente=="Oceania")
Africa<-which(promedios$continente=="Africa")


C.asia<-promedios[Asia,]
C.europe<-promedios[Europe,]
C.america<-promedios[Americas,]
C.oceania<-promedios[Oceania,]
C.africa<-promedios[Africa,]


Min.A<-which.min(C.asia$media)
Max.A<-which.max(C.asia$media)
#--------------------------------
Min.E<-which.min(C.europe$media)
Max.E<-which.max(C.europe$media)
#--------------------------------
Min.Am<-which.min(C.america$media)
Max.Am<-which.max(C.america$media)
#--------------------------------
Min.O<-which.min(C.oceania$media)
Max.O<-which.max(C.oceania$media)
#--------------------------------
Min.Af<-which.min(C.africa$media)
Max.Af<-which.max(C.africa$media)



#----------------
C.asia[Min.A,]
C.asia[Max.A,]
#----------------
C.europe[Min.E,]
C.europe[Max.E,]
#-----------------
C.america[Min.Am,]
C.america[Max.Am,]
#-----------------
C.oceania[Min.O,]
C.oceania[Max.O,]
#----------------
C.africa[Min.Af,]
C.africa[Max.Af,]








