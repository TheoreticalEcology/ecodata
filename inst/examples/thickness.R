thickness_df <- thickness
head(thickness_df)

str(thickness_df)


# ------------------------------------------------------------------------------
library(glmmTMB)

fit <- glmmTMB(thick ~ soil + (1|dummy), data = thickness_df)
summary(fit)

library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


# adding spatial correlation    ------------------------------------------------
fit2 <- glmmTMB(thick ~ soil + (1|dummy) , dispformula = ~ east + north, data = thickness_df)
summary(fit2)

res <- simulateResiduals(fit2)
plot(res)

DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)
