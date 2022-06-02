---
title: "EcoData - A collection of ecological datasets for teaching"
author: "Florian Hartig, Theoretical Ecology, University of Regensburg [website](http://www.uni-regensburg.de/biologie-vorklinische-medizin/theoretische-oekologie/mitarbeiter/hartig/)"
date: "2021-05-02"
output: 
  rmarkdown::html_vignette:
    toc: true
vignette: >
  %\VignetteIndexEntry{Vignette for the EcoData package}
  %\VignetteEngine{knitr::knitr}
  %\VignetteEncoding{UTF-8}
abstract: "EcoData is a collection of ecological datasets for teaching"
---






# Datasets according to use

## Tests

### t-test

* datasets::PlantGrowth -> discrete predictors (3 treatments)
* EcoData::regrowth -> discrete predictors (2 treatments)

### ANOVA

* datasets::PlantGrowth -> discrete predictors (1 predictor, 3 treatments)

## Regression

### Linear regression

* EcoData::solomonislands -> continous predictors (count data, but can be used with linear regression)
* datasets::airquality -> mostly continous predictors
* datasets::PlantGrowth -> discrete predictors (3 treatments)
* EcoData::wine -> continous predictors
* EcoData::regrowth -> discrete predictors (2 treatments)

### GLM


* EcoData::birdfeeding -> Poisson 
* EcoData::solomonislands -> Poisson
* EcoData::volcanoisland -> Poisson, Logistic
* EcoData::titanic -> Logistic 1/0
* EcoData::nasa -> Logistic 1/0
* datasets::esoph -> Logistic, k/n

### GLMM 

* EcoData::volcanoisland -> Random Effects, zero-inflation, spatial effects
* glmmTMB::owls -> Random Effects, zero-inflation

## MachineLearning

* EcoData::dataset_flower() -> Image Recognition
* EcoData::titanic_ml -> Classification 

### Classification

* datasets::iris



