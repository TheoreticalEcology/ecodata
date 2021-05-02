# Imported data

## Birdfeeding

birdfeeding = read.table("../DataCreation/RawData/schnaepper.txt", sep="")
colnames(birdfeeding) = c("feeding", "attractiveness")
str(birdfeeding)
usethis::use_data(birdfeeding, overwrite = TRUE)



## Titanic


titanic = read.csv("../DataCreation/RawData/titanic3.csv", nrows = 1309)
titanic$name = as.character(titanic$name)
usethis::use_data(titanic, overwrite = TRUE)



## Birds fragmentation


birdabundance = read.delim("../DataCreation/RawData/birds.txt")
usethis::use_data(birdabundance, overwrite = TRUE)


## Regrowth


regrowth = read.delim("../DataCreation/RawData/regrowth.txt")
usethis::use_data(regrowth, overwrite = TRUE)


## Solomon Islands


solomonislands = read.table("../DataCreation/RawData/solomon.txt", header = T)
solomonislands$Island = as.character(solomonislands$Island)
usethis::use_data(solomonislands, overwrite = TRUE)


## Student Alcohol

d1=read.csv("../DataCreation/RawData/student-mat.csv",header=TRUE)
d2=read.csv("../DataCreation/RawData/student-por.csv",header=TRUE)
students = merge(d1,d2,by=c("school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","nursery","internet"))
usethis::use_data(students, overwrite = TRUE)



## Nitrofen


nitrofen = read.csv("../DataCreation/RawData/nitrofen.csv")
usethis::use_data(nitrofen, overwrite = TRUE)



## Melanoma


melanoma = read.csv("../DataCreation/RawData/Melanoma.csv")
usethis::use_data(melanoma, overwrite = TRUE)




## Arthritis


arthritis = read.csv("../DataCreation/RawData/Arthritis.csv")
usethis::use_data(arthritis, overwrite = TRUE)



## RIKZ


rikz = read.table("../DataCreation/RawData/RIKZGroups.txt")
usethis::use_data(rikz, overwrite = TRUE)



## Streams


streams = read.table("../DataCreation/RawData/streams.txt")
usethis::use_data(streams, overwrite = TRUE)



## Cement


cement = read.csv("../DataCreation/RawData/cement.csv")
usethis::use_data(cement, overwrite = TRUE)


## Plants


plantcounts <- read.csv("../DataCreation/RawData/Plants.csv")
usethis::use_data(plantcounts, overwrite = TRUE)



## Anolis


anolisData <- read.csv("../DataCreation/RawData/anolisDataAppended.csv", row.names = 1)
anolisTree <- ape::read.tree("../DataCreation/RawData/anolis.phy")
usethis::use_data(anolisData, overwrite = TRUE)
usethis::use_data(anolisTree, overwrite = TRUE)



## Snouter


snouter <- read.table("../DataCreation/RawData/snouterdata.txt", header=T, sep="\t")
usethis::use_data(snouter, overwrite = TRUE)



# redCards
redCards = read.csv("../DataCreation/RawData/redCards.csv")
usethis::use_data(redCards, overwrite = TRUE)



###### Machine learning data-sets with missing predictors
##  plantPollinator

plantPollinators <- readRDS("../DataCreation/RawData/plantsPoll.RDS")
colnames(pollinators$data) = c("crop","insect", "type", "season", "diameter" ,"corolla","colour", "nectar", "b.system", "s.pollination" ,"inflorescence", "composite" , "guild",  "tongue", "body", "sociality" , "feeding","interaction")


df = pollinators$data
levels(df$interaction) = c(0, 1)
df$interaction
colnames(df) = c("crop","insect", "type", "season", "diameter" ,"corolla","colour", "nectar", "b.system", "s.pollination" ,"inflorescence", "composite" , "guild",  "tongue", "body", "sociality" , "feeding","interaction")
plantPollinators = df

unique(df$crop)[1:10]
unique(df$insect)[1:20]

nrow(  df[( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ), ]  )
plantPollinator_test = df[( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ), ]
plantPollinator_train = df[!( ( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ) ), ]


plantPollinator_test$interaction = NA
plantPollinator_df = rbind(plantPollinator_train, plantPollinator_test)

usethis::use_data(plantPollinator_df, overwrite = TRUE)
usethis::use_data(plantPollinators, overwrite = TRUE)



## Wine

wine = read.csv("../DataCreation/RawData/wine.csv")
usethis::use_data(wine, overwrite = TRUE)

## nasa

nasa = read.csv("../DataCreation/RawData/nasa.csv")
usethis::use_data(nasa, overwrite = TRUE)

