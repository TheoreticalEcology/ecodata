arthritis_df <- arthritis

arthritis_df$Treatment = as.factor(arthritis_df$Treatment)
arthritis_df$Sex = as.factor(arthritis_df$Sex)
arthritis_df$Improved = as.factor(arthritis_df$Improved)


str(arthritis_df)
plot(arthritis_df$Improved , c(1:84))
plot(arthritis_df$Treatment , c(1:84))


library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(Treatment ~ Improved + Age + Sex, family = binomial, data = arthritis_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testDispersion(res)

DHARMa::testOutliers(res)
