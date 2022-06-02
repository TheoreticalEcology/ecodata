rikz_df <- rikz
head(rikz_df)

str(rikz_df)


# plotting variables -------------------------------------------------
plot(rikz_df$temperature,rikz_df$Polychaeta)
plot(rikz_df$NAP,rikz_df$Polychaeta)
plot(rikz_df$humus,rikz_df$Polychaeta)



library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(Crustacea ~  salinity +
                temperature + NAP + humus ,
                family = nbinom1,
                dispformula = ~ salinity,   data = rikz_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

