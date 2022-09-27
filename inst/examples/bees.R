library(EcoData)
fit <- lm(log(Spobee + 1) ~ Infection + BeesN, data = bees)
summary(fit)



