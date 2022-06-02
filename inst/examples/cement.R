cement_df <- cement
head(cement_df)

str(cement_df)
plot(cement_df$y, c(1:13))



library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(y ~ X1 + X2 + X3 + X4 ,family = gaussian, data = cement_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)
