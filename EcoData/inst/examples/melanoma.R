melanoma_df <- melanoma
head(melanoma_df)

str(melanoma_df)

# factorize variables -------------------------------------------------
melanoma_df$DC = as.factor(melanoma_df$DC)
melanoma_df$level = as.factor(melanoma_df$level)
melanoma_df$ici = as.factor(melanoma_df$ici)
melanoma_df$ecel = as.factor(melanoma_df$ecel)
melanoma_df$ulcer = as.factor(melanoma_df$ulcer)
melanoma_df$sex = as.factor(melanoma_df$sex)


# plotting variables -------------------------------------------------
plot(melanoma_df$DC, 1:nrow(melanoma_df))
plot(melanoma_df$time, melanoma_df$thickness)


melanoma_df$time = scale(melanoma_df$time)
melanoma_df$thickness = scale(melanoma_df$thickness)



library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(DC ~  level + ici + ecel + ulcer + thickness + (1|sex), family = binomial , data = melanoma_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)
