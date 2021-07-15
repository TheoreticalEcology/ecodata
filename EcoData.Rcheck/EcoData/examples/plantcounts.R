
plants_sf <- plantcounts
plants_sf$agrarea_scaled <- scale(plants_sf$agrarea)

plants_sf$longitude <- plants_sf$lon
plants_sf$latitude <- plants_sf$lat
library(sf)
plants_sf <- sf::st_as_sf(plants_sf, coords = c('longitude', 'latitude'), crs = st_crs("+proj=longlat +ellps=bessel +towgs84=606,23,413,0,0,0,0 +no_defs"))

library(mapview)
mapview(plants_sf["agrarea"])
mapview(plants_sf["richness"], map.types = "OpenTopoMap")

library(glmmTMB)
# Negative binomial model -------------------------------------------------
fit <-  glmmTMB(richness ~ agrarea_scaled + offset(log(area)), family = nbinom1, data = plants_sf)
summary(fit)

library(DHARMa)
res <- simulateResiduals(fit)
plot(res)
testSpatialAutocorrelation(res, x = plants_sf$lon, y =  plants_sf$lat)

library(gstat)
vario <- gstat::variogram(residuals(res) ~ 1, loc = ~ lon + lat, data = plantcounts, alpha=c(0,45,90,135))
plot(vario)