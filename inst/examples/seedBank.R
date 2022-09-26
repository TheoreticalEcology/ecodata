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

rows = rownames(model.matrix(~sAltitude + sSeedMass + sSeedShape + sSeedN +
                               sSeedPr + sDormRank + sTemp + sHum + sNitro + 
                               sGrazing + Site + Species, data = data))
data = data[rows, ]