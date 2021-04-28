# Imported data

## Birdfeeding

birdfeeding = read.table("../DataCreation/RawData/schnaepper.txt", sep="")
colnames(birdfeeding) = c("feeding", "attractiveness")
str(birdfeeding)
usethis::use_data(birdfeeding, overwrite = T)



## Titanic


titanic = read.csv("../DataCreation/RawData/titanic3.csv", nrows = 1309)
titanic$name = as.character(titanic$name)
usethis::use_data(titanic, overwrite = T)



## Birds fragmentation


birdabundance = read.delim("../DataCreation/RawData/birds.txt")
usethis::use_data(birdabundance, overwrite = T)


## Regrowth


regrowth = read.delim("../DataCreation/RawData/regrowth.txt")
usethis::use_data(regrowth, overwrite = T)


## Solomon Islands


solomonislands = read.table("../DataCreation/RawData/solomon.txt", header = T)
solomonislands$Island = as.character(solomonislands$Island)
usethis::use_data(solomonislands, overwrite = T)


## Student Alcohol

d1=read.csv("../DataCreation/RawData/student-mat.csv",header=TRUE)
d2=read.csv("../DataCreation/RawData/student-por.csv",header=TRUE)
students = merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
usethis::use_data(students, overwrite = T)



## Nitrofen


nitrofen = read.csv("../DataCreation/RawData/nitrofen.csv")
usethis::use_data(nitrofen, overwrite = T)



## Melanoma


melanoma = read.csv("../DataCreation/RawData/Melanoma.csv")
usethis::use_data(melanoma, overwrite = T)




## Arthritis


arthritis = read.csv("../DataCreation/RawData/Arthritis.csv")
usethis::use_data(arthritis, overwrite = T)



## RKIZ


rikz = read.table("../DataCreation/RawData/RIKZGroups.txt")
usethis::use_data(rikz, overwrite = T)



## Streams


streams = read.table("../DataCreation/RawData/streams.txt")
usethis::use_data(streams, overwrite = T)



## Cement


cement = read.csv("../DataCreation/RawData/cement.csv")
usethis::use_data(cement, overwrite = T)


## Plants


plantcounts <- read.csv("../DataCreation/RawData/Plants.csv")
usethis::use_data(plantcounts, overwrite = T)



## Anolis


anolisData <- read.csv("../DataCreation/RawData/anolisDataAppended.csv", row.names = 1)
anolisTree <- ape::read.tree("../DataCreation/RawData/anolis.phy")
usethis::use_data(anolisData, overwrite = T)
usethis::use_data(anolisTree, overwrite = T)



## Snouter


snouter <- read.table("../DataCreation/RawData/snouterdata.txt", header=T, sep="\t")
usethis::use_data(snouter, overwrite = T)




# Simulated Datasets

## Island Example

# Data creation


library(ape)

set.seed(123)

plots = 100
replicates = 10
size = plots * replicates

data = data.frame(dataID = 1:(plots*replicates),
                  plot = as.factor(rep(1:plots, each = replicates)),
                  year = rep(1:replicates, times = plots),
                  x = rep(sample.int(ncol(volcano), plots, replace=T),each = replicates),
                  y = rep(sample.int(nrow(volcano), plots, replace=T),each = replicates),
                  altitude = rep(NA, size),
                  plotRandom = rep(rnorm(plots, 0, 1), each = replicates),
                  yearRandom = rep(rnorm(replicates, 0, 0.4), times = plots),
                  overdispersion = rnorm(size, sd = 0.5),
                  habitatQuality = rep(rnorm(plots, 0, 1), each = replicates),
                  earth = rep(NA, size),
                  spatialRE = rep(NA, size)
)

library(RandomFields)
model <- RMexp(var=10, scale=4) + RMnugget(var=1)
field1 <- as.matrix(RFsimulate(model, x=seq(1, ncol(volcano), length=ncol(volcano)) , y=seq(1, nrow(volcano), length=nrow(volcano))))
field2 <- as.matrix(RFsimulate(model, x=seq(1, ncol(volcano), length=ncol(volcano)) , y=seq(1, nrow(volcano), length=nrow(volcano))))

for (i in 1:size){
  data$altitude[i] = volcano[data$y[i], data$x[i]]
  data$earth[i] =  field1[data$x[i], data$y[i]]
  data$spatialRE[i] =  field2[data$x[i], data$y[i]]
}
data$sAltitude = as.vector(scale(data$altitude))

data$windMean = exp(sqrt(data$sAltitude - min(data$sAltitude)) + 0.1 * data$spatialRE + 0.02 * data$x)
data$windObs = exp(log(data$windMean) + rnorm(size, sd = 0.7))

data$lizards = rep(rbinom(plots, 1, plogis(scale(-unique(data$earth)))), each = replicates)
data$lizardsObs = data$lizards * rbinom(size, 1, plogis(-data$windObs + 4)  )

data$zeroinflation = rbinom(size,1,0.7 * (1 - data$lizards))

data$beetles = with(data, rpois(1000, exp(3 + 0.2*sAltitude - 2*sAltitude^2 + 0.3 * habitatQuality + overdispersion + plotRandom[plot]
                                          + yearRandom[year]) ))

data$beetles2 = with(data, rpois(1000, exp(3 + 0.2*sAltitude - 2*sAltitude^2 + 0.3 * habitatQuality + overdispersion + plotRandom[plot]
                                           + yearRandom[year]) * zeroinflation ))


data$survivedOf20 = with(data, rbinom(1000, 20, plogis(habitatQuality + rnorm(1000))))

volcanoisland = data

library(ape)
n <- 100
phy <- compute.brlen(rtree(n=n), method = "Grafen", power = 1)

# Generate random data and standardize to have mean 0 and variance 1
X1 <- rTraitCont(phy, model = "BM", sigma = 1)
X1 <- (X1 - mean(X1))/var(X1)

# Simulate binary Y
sim.dat <- data.frame(Y=array(0, dim=n), X1=X1, row.names=phy$tip.label)
sim.dat$Y <- binaryPGLMM.sim(Y ~ X1, phy=phy, data=sim.dat, s2=.5,
                             B=matrix(c(0,.25),nrow=2,ncol=1), nrep=1)$Y


volcanoisland = volcanoisland[,c(1:6,10:11,13:17, 19:21)]

usethis::use_data(volcanoisland, overwrite = T)



