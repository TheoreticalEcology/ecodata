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



## RIKZ


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

