wine_df <- wine
head(wine_df)

str(wine_df)


# plotting variables -------------------------------------------------
plot(wine_df$quality , wine_df$alcohol)
plot(wine_df$quality , wine_df$chlorides)


# defining variables -------------------------------------------------
wine_df$fixed.quality = as.factor(wine_df$quality)

wine_df$s_fixed.acidity = scale(wine_df$fixed.acidity)
wine_df$s_volatile.acidity = scale(wine_df$volatile.acidity)
wine_df$s_citric.acid  = scale(wine_df$citric.acid )
wine_df$s_residual.sugar = scale(wine_df$residual.sugar)
wine_df$s_chlorides = scale(wine_df$chlorides)
wine_df$s_alcohol = scale(wine_df$alcohol)

library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(quality ~ alcohol + pH + sulphates + density  ,  family = gaussian , data = wine_df)
summary(fit)
res <- simulateResiduals(fit)
plot(res)


fit <-  glmmTMB(quality ~ fixed.acidity  + volatile.acidity + citric.acid  + residual.sugar  + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density +  pH +  sulphates+  alcohol  +  fixed.acidity  , family = poisson  , data = wine_df)
summary(fit)
res <- simulateResiduals(fit)
plot(res)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)

