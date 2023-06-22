elemental

# traditional lm, arc sine transformed response of proportions, see critique in https://esajournals.onlinelibrary.wiley.com/doi/10.1890/10-0340.1
m1 <- lm(N_arc ~ Year + Site + Species, data = elemental)
summary(m1)

# beta regression
library(glmmTMB)
m2 <- glmmTMB(N_dec ~ (Year + Site) * Species, family = beta_family, data = elemental )
summary(m2)

