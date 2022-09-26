# SB density (for lm or lmm):
hist(seedBank$SBDensity)

# SB presence-absence (for glm or glmm)
table(seedBank$SBPA)

# Scale and remove NA:
data = as.data.frame(seedBank)
data$sAltitude = scale(data$Altitude)
data$sSeedMass = scale(data$SeedMass)
data$sSeedShape = scale(data$SeedShape)
data$sSeedN = scale(data$SeedN)
data$sSeedPr = scale(data$SeedPr)
data$sDormRank = scale(data$DormRank)
data$sTemp = scale(data$Temp)
data$sHum = scale(data$Humidity)
data$sNitro = scale(data$Nitrogen)
data$sGrazing = scale(data$Grazing)

rows = rownames(model.matrix(SBDensity~sAltitude + sSeedMass + sSeedShape + 
                               sSeedN + sSeedPr + sDormRank + sTemp + sHum + 
                               sNitro + sGrazing + Site + Species, data = data))
data = data[rows, ]



# LM example:
m1 = lm(log(SBDensity+1)~sAltitude, data = data)
summary(m1)

# Include phylogeny:
## Calculate phylogenetic distance matrix for species in the seedBank dataset:
library(ape)
library(geiger)
species = unique(seedBank$Species)
species_df = data.frame(Species = species)
rownames(species_df) = species
obj = name.check(plantPhylo, species_df)
phyl.upd = drop.tip(plantPhylo, obj$tree_not_data)
phyl.upd2 = multi2di(phyl.upd)


# Fit phylogentic correlation structure
library(nlme)
m2 = gls(log(SBDensity+1)~sAltitude, 
         correlation = corBrownian(phy = phyl.upd2, form =~ Species), 
         data = data)
summary(m2)
