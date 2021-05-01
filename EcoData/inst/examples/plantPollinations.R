library(EcoData)
pollinators = plantPollinators

df = pollinators
levels(df$interaction) = c(0, 1)
df$interaction


unique(df$crop)[1:10]
unique(df$insect)[1:20]

nrow(  df[( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ), ]  )
plantPollinator_test = df[( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ), ]
plantPollinator_train = df[!( ( df$crop %in% unique(df$crop)[1:15] ) | ( df$insect %in% unique(df$insect)[1:30] ) ), ]


plantPollinator_test$interaction = NA
plantPollinator_df = rbind(plantPollinator_train, plantPollinator_test)
