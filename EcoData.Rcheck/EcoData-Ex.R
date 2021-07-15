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



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("plantcounts", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
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
  
  plot(year, altitude, cex = beetles/5, pch =2, main = "Beetle counts across altitudinal gradient, triangle is proportional to counts")
  #lines(plot, altitude * 1000)
  #points(unique(plot), unique(altitude * 1000) , pch = 3)
  #text(unique(plot), unique(altitude * 1000) - 50, unique(plot), cex = 0.7 )
})



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
