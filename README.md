# EcoData - a collection of ecological datasets for teaching

The EcoData package is a collection of ecological datasets for teaching. It also installs a number of R packages that we consider useful for teaching.

## Installing EcoData

If you want to install the current (development) version from this repository, run the following code

```{r}
#install.packages("devtools") # run this only if you don't have devtools installed
devtools::install_github(repo = "florianhartig/EcoData", subdir = "EcoData", 
dependencies = T, build_vignettes = T)
```

Below the status of the automatic tests via GitHub Actions

[![R-CMD-check](https://github.com/TheoreticalEcology/EcoData/workflows/R-CMD-check/badge.svg)](https://github.com/TheoreticalEcology/EcoData/actions)

If this doesn't work for you, try installing a pre-compiled source package via

```{r}
devtools::install_url("https://github.com/TheoreticalEcology/ecodata/releases/download/v0.2.1/EcoData_0.2.1.tar.gz")
```

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




