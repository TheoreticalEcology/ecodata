0.015 * 0.5 /(0.015 * 0.5 + 0.118 * 0.5)
0.118 * 0.5 /(0.015 * 0.5 + 0.118 * 0.5)



lm(Fertility ~ Education, data = swiss)
lm(Fertility ~ Education + Catholic + Infant.Mortality + Agriculture, data = swiss)


[,1]	Fertility	Ig, common standardized fertility measure
[,2]	Agriculture	% of males involved in agriculture as occupation
[,3]	Examination	% draftees receiving highest mark on army examination
[,4]	Education	% education beyond primary school for draftees.
[,5]	Catholic	% catholic (as opposed to protestant).
[,6]	Infant.Mortality	live births who live less than 1 year.

install.packages("decon")
library(decon)
data(framingham)



install.packages("mlbench")
library(mlbench)

data(BostonHousing)
dim(BostonHousing)
head(BostonHousing)

fit <- lm(medv ~ age, data = BostonHousing)
summary(fit)

fit <- lm(medv ~ age + lstat , data = BostonHousing)
summary(fit)



data(PimaIndiansDiabetes)
dim(PimaIndiansDiabetes)
levels(PimaIndiansDiabetes$diabetes)
head(PimaIndiansDiabetes)

m1 <- lm(glucose ~ age , data = PimaIndiansDiabetes)
summary(m1)

m2 <- lm(glucose ~ age + mass + diabetes + triceps, data = PimaIndiansDiabetes)
summary(m2)

anova(m1, m2)

# Grundsaetzlich


AIC(fit1)
AIC(fit2)

anova(fit1, fit2)
anova(fit2)


set.seed(42)
dat = data.frame(matrix(rnorm(400), ncol = 10))
fit = lm(X1 ~ X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10, data = dat)
summary(fit)

library(MASS)

stepAIC(fit)


library(boot)
data(melanoma)
head(melanoma)

fit = lm(time ~ sex + age + thickness, data = melanoma)
summary(fit)
anova(fit)


fit = lm(time ~ sex * age + thickness, data = melanoma)
summary(fit)
anova(fit)


fit = lm(time ~ thickness + age + sex, data = melanoma)
summary(fit)
anova(fit)


