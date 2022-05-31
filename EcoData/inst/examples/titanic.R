titanic_df <- titanic
head(titanic_df)

str(titanic_df)

# factorize variables -------------------------------------------------
titanic_df$survived = as.factor(titanic_df$survived)
titanic_df$pclass = as.factor(titanic_df$pclass)
titanic_df$sex = as.factor(titanic_df$sex)


# plotting variables -------------------------------------------------
plot( titanic_df$sex , titanic_df$survived,
      ylab = "survived 1=yes/ 0=no", xlab= "sex")

plot( titanic_df$pclass, titanic_df$survived,
      ylab = "passenger class", xlab= "sex")




library(glmmTMB)
# binomial model -------------------------------------------------
fit <-  glmmTMB(survived ~ pclass + sex + age + sibsp ,
                family = binomial , data = titanic_df)
summary(fit)



library(DHARMa)
res <- simulateResiduals(fit)
plot(res)


DHARMa::testQuantiles(res)
DHARMa::testDispersion(res)

DHARMa::testZeroInflation(res)

# adding random effect -------------------------------------------------
fit2 <-  glmmTMB(survived ~ pclass + sex + age + sibsp + (1|name),
                 family = binomial , data = titanic_df)
summary(fit)


res2 <- simulateResiduals(fit2)
plot(res2)
