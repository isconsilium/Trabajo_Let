Afg<-suicidios[1,]
suicidios[45,]

Cyprus<-suicidios[45,]

plot(as.numeric(Cyprus[-1]),xlab = "Años",ylab = "Cantidad de Suicidios",main = "Cantidad de Suicidios en Cyprus",col=2)

plot(as.numeric(Afg[-1]),xlab = "Años",ylab = "Cantidad de Suicidios",main = "Cantidad de Suicidios en Afghanistan",col=1)