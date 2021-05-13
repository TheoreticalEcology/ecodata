birdabundance_df <- birdabundance
head(birdabundance_df)

str(birdabundance_df)
plot(birdabundance_df$ABUND, c(1:56))
plot(birdabundance_df$ABUND, birdabundance_df$GRAZE)


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(ABUND ~ AREA + DIST ,family = gaussian, data = birdabundance_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testOutliers(res)
