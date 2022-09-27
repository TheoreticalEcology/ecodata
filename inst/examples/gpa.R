require(EcoData)
fit <- lm(gpa ~ occasion, data = gpa)
summary(fit)
