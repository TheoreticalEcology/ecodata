oldpar <- par(mfrow = c(1,2))
contour(x = 1:ncol(volcano), y = 1:nrow(volcano), t(volcano), asp = 1)
points(volcanoisland$x, volcanoisland$y, cex = volcanoisland$wind)
persp(volcano)
par(oldpar)

with(volcanoisland, {
  
  plot(altitude, year, cex = beetles/10, pch =2, 
    main = "Beetle counts across altitudinal gradient, 
    triangle is proportional to counts")
})

# Base models that could be extended

# wind is continous, thus starting with lm
fit <- lm(log(windObs) ~ sAltitude, data = volcanoisland)
summary(fit)

# lizards are presence / absence, thus binomial
fit <- glm(lizards ~ 1, family = binomial, data = volcanoisland)
summary(fit)

# beetles are counts, thus poisson
fit <- glm(beetles ~ 1, family = poisson, data = volcanoisland)
summary(fit)

fit <- glmmTMB(beetles2 ~ 1 , family = poisson, data = volcanoisland)
summary(fit)

# survived are k/n binomial 
fit <- glm(cbind(survivedOf20, 20-survivedOf20) ~ 1, 
           family = binomial, data = volcanoisland)
summary(fit)