##  Load dataset
nasa_df <- nasa
head(nasa_df)

str(nasa_df)

## 2. Impute missing values (not our response variable!)
library(missRanger)
library(dplyr)
#wine_imputed = titanic %>% select(-name, -ticket, -cabin, -boat, -home.dest)
nasa_imputed = missRanger::missRanger(data = nasa_df %>% select(-Hazardous), maxiter = 1, num.trees=5L)

## ..................................

nasa_imputed$Hazardous = nasa_df$Hazardous

## 3. Split into training and testing

train = nasa_imputed[!is.na(nasa_df$Hazardous), ]
test = nasa_imputed[is.na(nasa_df$Hazardous), ]

## 4. Train model

library(ranger)
rf = ranger(Hazardous~., data = train, classification = TRUE, probability = TRUE)

## 5. Predictions

preds = predict(rf, data = test)$predictions[,2]
head(preds)
