library(EcoData)
library(DHARMa)
str(volcanoisland)

fit = lm(windObs ~ sAltitude, data =  volcanoisland)
summary(fit)
par(mfrow = c(2,2))
plot(fit)

library(effects)
plot(allEffects(fit))


fit = glm(beetles ~ altitude, data =  volcanoisland, family = "poisson")
summary(fit)
res = simulateResiduals(fit)
plot(res)
testDispersion(res)
testZeroInflation(res)

res2 = recalculateResiduals(res, group = volcanoisland$plot)
plot(res2)

xag = aggregate(volcanoisland$x, by=list(Plot=volcanoisland$plot), FUN=mean)
yag = aggregate(volcanoisland$y, by=list(Plot=volcanoisland$plot), FUN=mean)
testSpatialAutocorrelation(res2, x = xag$x, y = yag$x)


fit = glm(lizards ~ earth, data =  volcanoisland, family = "binomial")
summary(fit)
res = simulateResiduals(fit)
plot(res)




