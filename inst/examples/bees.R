library(DHARMa)
library(EcoData)
library(effects)
library(lme4)


data(bees)
str(bees)
summary(bees)
plot(bees)
cor(bees)


table(bees$Infection) # Hardly any infections at all.
# Use 1 factor infected (yes / no).
bees$infected = as.factor(1 * (bees$Infection != 0))

bees$Hive = as.factor(bees$Hive)

# Data is on (very) different scales.
bees$Rawdata = as.numeric(scale(bees$Rawdata))
bees$Spobee = as.numeric(scale(log(bees$Spobee + 1))) # Zeros are occurring.
bees$BeesN = as.numeric(scale(bees$BeesN))


model = lmer(Spobee ~ infected * (BeesN + I(BeesN^3)) + (1 | Hive), data = bees)
plot(allEffects(model, partial.residuals = T), selection = 1)
# Random intercept for hive needs to be related to the combination of X and Y.
# Rawdata and Spobee correspond to each other.
# Besides BeesN and infected / Infection, there are no more variables available.


res = simulateResiduals(model)
plot(res)
testDispersion(res)


