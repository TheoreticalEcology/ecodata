pkgname <- "EcoData"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
base::assign(".ExTimings", "EcoData-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('EcoData')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("EcoData")
### * EcoData

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: EcoData
### Title: EcoData - A collection of ecological datasets for teaching
### Aliases: EcoData

### ** Examples

vignette("EcoData", package="EcoData")



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("EcoData", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("arthritis")
### * arthritis

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: arthritis
### Title: Arthritis
### Aliases: arthritis
### Keywords: datasets

### ** Examples

arthritis_df <- arthritis

arthritis_df$Treatment = as.factor(arthritis_df$Treatment)
arthritis_df$Sex = as.factor(arthritis_df$Sex)
arthritis_df$Improved = as.factor(arthritis_df$Improved)


str(arthritis_df)
plot(arthritis_df$Improved , c(1:84))
plot(arthritis_df$Treatment , c(1:84))


library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(Treatment ~ Improved + Age + Sex, family = binomial, data = arthritis_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testOutliers(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("arthritis", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("birdabundance")
### * birdabundance

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: birdabundance
### Title: Birdabundance
### Aliases: birdabundance
### Keywords: datasets

### ** Examples

birdabundance_df <- birdabundance
head(birdabundance_df)

str(birdabundance_df)
plot(birdabundance_df$ABUND, c(1:56))
plot(birdabundance_df$ABUND, birdabundance_df$GRAZE)


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(ABUND ~ AREA + DIST ,family = gaussian, data = birdabundance_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testOutliers(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("birdabundance", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("birdfeeding")
### * birdfeeding

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: birdfeeding
### Title: Feeding of bird nestlings
### Aliases: birdfeeding
### Keywords: datasets

### ** Examples

birdfeeding_df <- birdfeeding
head(birdfeeding_df)

str(birdfeeding_df)
plot(birdfeeding_df$feeding, birdfeeding_df$attractiveness)



library(glmmTMB)
# poisson model -------------------------------------------------
fit <-  glmmTMB(feeding ~ attractiveness ,family = poisson, data = birdfeeding_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("birdfeeding", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("cement")
### * cement

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: cement
### Title: Cement
### Aliases: cement
### Keywords: datasets

### ** Examples

cement_df <- cement
head(cement_df)

str(cement_df)
plot(cement_df$y, c(1:13))



library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(y ~ X1 + X2 + X3 + X4 ,family = gaussian, data = cement_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("cement", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("melanoma")
### * melanoma

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: melanoma
### Title: Melanoma
### Aliases: melanoma
### Keywords: datasets

### ** Examples

melanoma_df <- melanoma
head(melanoma_df)

str(melanoma_df)

# factorize variables -------------------------------------------------
melanoma_df$DC = as.factor(melanoma_df$DC)
melanoma_df$level = as.factor(melanoma_df$level)
melanoma_df$ici = as.factor(melanoma_df$ici)
melanoma_df$ecel = as.factor(melanoma_df$ecel)
melanoma_df$ulcer = as.factor(melanoma_df$ulcer)
melanoma_df$sex = as.factor(melanoma_df$sex)


# plotting variables -------------------------------------------------
plot(melanoma_df$DC, 1:nrow(melanoma_df))
plot(melanoma_df$time, melanoma_df$thickness)


melanoma_df$time = scale(melanoma_df$time)
melanoma_df$thickness = scale(melanoma_df$thickness)



library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(ecel ~  level + ici + DC + ulcer + thickness
                + (1|sex), family = binomial , data = melanoma_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("melanoma", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("nasa")
### * nasa

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: nasa
### Title: Nasa asteroids
### Aliases: nasa
### Keywords: datasets

### ** Examples

##  Load dataset
nasa_df <- nasa
head(nasa_df)

str(nasa_df)

## 2. Impute missing values (not our response variable!)
library(missRanger)
library(dplyr)
#wine_imputed = titanic %>% select(-name, -ticket, -cabin, -boat, -home.dest)
nasa_imputed = missRanger::missRanger(data = nasa_df
                              %>% select(-Hazardous), maxiter = 1, num.trees=5L)

## ..................................

nasa_imputed$Hazardous = nasa_df$Hazardous

## 3. Split into training and testing

train = nasa_imputed[!is.na(nasa_df$Hazardous), ]
test = nasa_imputed[is.na(nasa_df$Hazardous), ]

## 4. Train model

library(ranger)
rf =ranger(Hazardous~., data = train, classification = TRUE, probability = TRUE)

## 5. Predictions

preds = predict(rf, data = test)$predictions[,2]
head(preds)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("nasa", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("nitrofen")
### * nitrofen

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: nitrofen
### Title: Nitrofen
### Aliases: nitrofen
### Keywords: datasets

### ** Examples

nitrofen_df <- nitrofen
head(nitrofen_df)

str(nitrofen_df)

# plotting variables -------------------------------------------------
plot(nitrofen_df$conc, 1:nrow(nitrofen_df))
plot(nitrofen_df$total, 1:nrow(nitrofen_df))


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(total ~  conc + I(conc^2) + brood1 + brood2, family = gaussian ,data = nitrofen_df)
summary(fit)


library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testQuantiles(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("nitrofen", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("plantPollinator_df")
### * plantPollinator_df

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: plantPollinator_df
### Title: plantPollinations
### Aliases: plantPollinator_df
### Keywords: datasets

### ** Examples

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



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("plantPollinator_df", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("plantcounts")
### * plantcounts

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: plantcounts
### Title: Plantcounts
### Aliases: plantcounts
### Keywords: datasets

### ** Examples

plants_sf <- plantcounts
str(plants_sf)
plants_sf$agrarea_scaled <- scale(plants_sf$agrarea)

plants_sf$longitude <- plants_sf$lon
plants_sf$latitude <- plants_sf$lat
library(sf)
plants_sf <- sf::st_as_sf(plants_sf, coords = c('longitude', 'latitude'), crs
                          = st_crs("+proj=longlat +ellps=bessel
                                   +towgs84=606,23,413,0,0,0,0 +no_defs"))

library(mapview)
mapview(plants_sf["agrarea"])
mapview(plants_sf["richness"], map.types = "OpenTopoMap")

library(glmmTMB)
# Negative binomial model -------------------------------------------------
fit <-  glmmTMB(richness ~ agrarea_scaled + offset(log(area)),
                family = nbinom1, data = plants_sf)
summary(fit)

library(DHARMa)
res <- simulateResiduals(fit)
plot(res)
testSpatialAutocorrelation(res, x = plants_sf$lon, y =  plants_sf$lat)

library(gstat)
vario <- gstat::variogram(residuals(res) ~ 1, loc = ~ lon + lat,
                          data = plantcounts, alpha=c(0,45,90,135))

plot(vario)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("plantcounts", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("redCards")
### * redCards

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: redCards
### Title: redCards
### Aliases: redCards
### Keywords: datasets

### ** Examples

redCards_df <- redCards
head(redCards_df)

str(redCards_df)

# preparing data -------------------------------------------------

redCards_df$mrater <- apply(FUN=mean, X=redCards_df[,which(grepl(
                  x=colnames(redCards_df),pattern = "rater"))], MARGIN = 1)

redCards_df <- redCards_df[which(!is.na(redCards_df$mrater)),]
redCards_df$refNum = as.factor(redCards_df$refNum)

## ..................................
library(glmmTMB)
fit <- glmmTMB(redCards ~ scale(mrater) + (1|playerShort)  + (1|refNum),
               data = redCards_df, family= nbinom2,
               dispformula = ~ 1,
               ziformula = ~ 1)

summary(fit)


## ..................................
library(DHARMa)
res <- simulateResiduals(fit)
res


testQuantiles(res)
testOutliers(res)
testZeroInflation(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("redCards", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("regrowth")
### * regrowth

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: regrowth
### Title: Regrowth
### Aliases: regrowth
### Keywords: datasets

### ** Examples

regrowth_df <- regrowth
head(regrowth_df)

str(regrowth_df)

# factorize variables -------------------------------------------------
regrowth_df$Grazing = as.factor(regrowth_df$Grazing )


plot(regrowth_df$Grazing, regrowth_df$Root)
plot(regrowth_df$Grazing, regrowth_df$Fruit)


library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(Grazing ~  Root ,family = binomial , data = regrowth_df)
summary(fit)


library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)







base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("regrowth", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("rikz")
### * rikz

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: rikz
### Title: RIKZ
### Aliases: rikz
### Keywords: datasets

### ** Examples

rikz_df <- rikz
head(rikz_df)

str(rikz_df)


# plotting variables -------------------------------------------------
plot(rikz_df$temperature,rikz_df$Polychaeta)
plot(rikz_df$NAP,rikz_df$Polychaeta)
plot(rikz_df$humus,rikz_df$Polychaeta)



library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(Crustacea ~  salinity +
                temperature + NAP + humus ,
                family = nbinom1,
                dispformula = ~ salinity,   data = rikz_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("rikz", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("snouter")
### * snouter

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: snouter
### Title: Snouter
### Aliases: snouter
### Keywords: datasets

### ** Examples

# plotting the data
image(xtabs(rain~X+Y, data=snouter))
image(xtabs(djungle~X+Y, data=snouter))
image(xtabs(snouter1.1~X+Y, data=snouter))

# fit and residual plot in space
ols1 <- lm(snouter1.1 ~ rain + djungle, data=snouter)
summary(ols1)
image(xtabs(residuals(ols1)~X+Y, data=snouter))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("snouter", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("solomonislands")
### * solomonislands

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: solomonislands
### Title: Solomon Islands - Island Biogeography
### Aliases: solomonislands
### Keywords: datasets

### ** Examples

solomonIsland_df <- solomonislands
head(solomonIsland_df)


# factorize variables -------------------------------------------------
solomonIsland_df$Island = as.factor(solomonIsland_df$Island)


# plotting variables -------------------------------------------------
plot(solomonIsland_df$Species, 1:nrow(solomonIsland_df))
plot(solomonIsland_df$Island, solomonIsland_df$Species)

fit <- glm(Species ~ Area + Distance, data=solomonIsland_df, family = poisson)
summary(fit)
image(xtabs(residuals(fit)~Area + Distance, data=solomonIsland_df))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("solomonislands", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("students")
### * students

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: students
### Title: Students
### Aliases: students
### Keywords: datasets

### ** Examples

students_df <- students
head(students_df)


# factorize variables -------------------------------------------------
students_df$school = as.factor(students_df$school)
students_df$sex = as.factor(students_df$sex)
students_df$age = as.factor(students_df$age)



# plotting variables -------------------------------------------------
plot(students_df$G1.x, students_df$G1.y)
abline(a = 1, b = 1, col = "red")

plot(students_df$G2.x, students_df$G2.y)
abline(a = 1, b = 1, col = "red")

plot(students_df$G3.x, students_df$G3.y)
abline(a = 1, b = 1, col = "red")


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(G2.x ~  school + sex + age, family = gaussian ,data = students_df)
summary(fit)


library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testQuantiles(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("students", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("thickness")
### * thickness

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: thickness
### Title: thickness of coal
### Aliases: thickness
### Keywords: datasets

### ** Examples

thickness_df <- thickness
head(thickness_df)

str(thickness_df)


# ------------------------------------------------------------------------------
library(glmmTMB)

fit <- glmmTMB(thick ~ soil + (1|dummy), data = thickness_df)
summary(fit)

library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


# adding spatial correlation    ------------------------------------------------
fit2 <- glmmTMB(thick ~ soil + (1|dummy) , dispformula = ~ east + north, data = thickness_df)
summary(fit2)

res <- simulateResiduals(fit2)
plot(res)

DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("thickness", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("titanic")
### * titanic

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: titanic
### Title: Titanic data
### Aliases: titanic
### Keywords: datasets

### ** Examples

titanic_df <- titanic
head(titanic_df)

str(titanic_df)

# factorize variables -------------------------------------------------
titanic_df$survived = as.factor(titanic_df$survived)
titanic_df$pclass = as.factor(titanic_df$pclass)
titanic_df$sex = as.factor(titanic_df$sex)


# plotting variables -------------------------------------------------
plot( titanic_df$sex , titanic_df$survived,
      ylab = "survived 1=yes/ 0=no", xlab= "sex")

plot( titanic_df$pclass, titanic_df$survived,
      ylab = "passenger class", xlab= "sex")




library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(survived ~ pclass + sex + age + sibsp ,
                family = binomial , data = titanic_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)

# adding random effect -------------------------------------------------
fit2 <-  glmmTMB(survived ~ pclass + sex + age + sibsp + (1|name),
                 family = binomial , data = titanic_df)
summary(fit)


res2 <- simulateResiduals(fit2)
plot(res2)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("titanic", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("volcanoisland")
### * volcanoisland

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: volcanoisland
### Title: Volcano island
### Aliases: volcanoisland
### Keywords: datasets

### ** Examples

oldpar <- par(mfrow = c(1,2))
contour(x = 1:ncol(volcano), y = 1:nrow(volcano), t(volcano), asp = 1)
points(volcanoisland$x, volcanoisland$y, cex = volcanoisland$wind)
persp(volcano)
par(oldpar)

with(volcanoisland, {
  
  plot(altitude, year, cex = beetles/10, pch =2, 
    main = "Beetle counts across altitudinal gradient, 
    triangle is proportional to counts")
})

# Base models that could be extended

# wind is continous, thus starting with lm
fit <- lm(log(windObs) ~ sAltitude, data = volcanoisland)
summary(fit)

# lizards are presence / absence, thus binomial
fit <- glm(lizards ~ 1, family = binomial, data = volcanoisland)
summary(fit)

# beetles are counts, thus poisson
fit <- glm(beetles ~ 1, family = poisson, data = volcanoisland)
summary(fit)

fit <- glmmTMB(beetles2 ~ 1 , family = poisson, data = volcanoisland)
summary(fit)

# survived are k/n binomial 
fit <- glm(cbind(survivedOf20, 20-survivedOf20) ~ 1, 
           family = binomial, data = volcanoisland)
summary(fit)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("volcanoisland", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
graphics::par(get("par.postscript", pos = 'CheckExEnv'))
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
