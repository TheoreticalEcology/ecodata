library(EcoData)
str(volcanoisland)

fit = lm(windObs ~ sAltitude, data =  volcanoisland)
summary(fit)
library(effects)
plot(allEffects(fit))


