library(EcoData)
plant_poll = plantPollinators

plant_poll = plant_poll
levels(plant_poll$interaction) = c(0, 1)
plant_poll$interaction

str(plant_poll)
summary(plant_poll)

unique(plant_poll$crop)[1:10]
unique(plant_poll$insect)[1:20]

nrow(  plant_poll[( plant_poll$crop %in% unique(plant_poll$crop)[1:15] )
      | ( plant_poll$insect %in% unique(plant_poll$insect)[1:30] ), ]  )


library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(interaction ~ season  + crop + nectar + guild + tongue
                + body + sociality, family = binomial ,data = plant_poll)
summary(fit)

library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)
