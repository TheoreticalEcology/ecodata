birdfeeding_df <- birdfeeding
head(birdfeeding_df)

str(birdfeeding_df)
plot(birdfeeding_df$feeding, birdfeeding_df$attractiveness)



library(glmmTMB)
# poisson model -------------------------------------------------
fit <-  glmmTMB(feeding ~ attractiveness ,family = poisson, data = birdfeeding_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)
