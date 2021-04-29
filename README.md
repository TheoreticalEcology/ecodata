# EcoData - a collection of ecological datasets for teaching

The EcoData package is a collection of ecological datasets for teaching. It also installs a number of R packages that we consider useful for teaching.

## Installing EcoData

If you want to install the current (development) version from this repository, run

```{r}
devtools::install_github(repo = "florianhartig/EcoData", subdir = "EcoData", 
dependencies = T, build_vignettes = T)
```

To install a pre-packaged release (available under releases), use 

```{r}
devtools::install_url("https://github.com/florianhartig/ecodata/releases/download/v0.0.0.2/EcoData_0.0.0.2.tar.gz")
```

Decide for the version number that you want to install in [https://github.com/florianhartig/EcoData/releases](https://github.com/florianhartig/EcoData/releases) 

Below the status of the automatic Github Action tests on the master branch
[![R-CMD-check](https://github.com/TheoreticalEcology/ecodata/workflows/R-CMD-check/badge.svg)](https://github.com/TheoreticalEcology/ecodata/actions)

To get an overview about its functionality once the package is installed, run

```{r}
library(EcoData)
?EcoData
vignette("EcoData", package="EcoData")
```

If you want to cite the package, use

```{r}
citation("EcoData")
```

If you want to know how the (simulated) data was created, check out https://github.com/florianhartig/ecodata/tree/master/DataCreation




