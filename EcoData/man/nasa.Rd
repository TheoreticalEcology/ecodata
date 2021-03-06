% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{nasa}
\alias{nasa}
\title{Nasa asteroids}
\format{
An object of class \code{data.frame} with 4687 rows and 40 columns.
}
\usage{
nasa
}
\description{
A collection about asteroids and their characteristics from \url{https://www.kaggle.com/shrutimehta/nasa-asteroids-classification}. The aim is to predict whether the asteroids are hazardous or not.
\describe{
\item{Hazardous}{response variable, 0 or 1}
}
}
\examples{
##  Load dataset
nasa_df <- nasa
head(nasa_df)

str(nasa_df)

## 2. Impute missing values (not our response variable!)
library(missRanger)
library(dplyr)
#wine_imputed = titanic \%>\% select(-name, -ticket, -cabin, -boat, -home.dest)
nasa_imputed = missRanger::missRanger(data = nasa_df \%>\% select(-Hazardous), maxiter = 1, num.trees=5L)

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
}
\author{
Maximilian Pichler
}
\keyword{datasets}
