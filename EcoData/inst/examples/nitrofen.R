nitrofen_df <- nitrofen
head(nitrofen_df)

str(nitrofen_df)

# plotting variables -------------------------------------------------
plot(nitrofen_df$conc, 1:nrow(nitrofen_df))
plot(nitrofen_df$total, 1:nrow(nitrofen_df))


library(glmmTMB)
# gaussian model -------------------------------------------------
fit <-  glmmTMB(total ~  conc + I(conc^2) + brood1 + brood2, family = gaussian ,data = nitrofen_df)
summary(fit)


library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testQuantiles(res)
