

# plotting the data 
image(xtabs(rain~X+Y, data=snouter))
image(xtabs(djungle~X+Y, data=snouter))
image(xtabs(snouter1.1~X+Y, data=snouter))

# fit and residual plot in space
ols1 <- lm(snouter1.1 ~ rain + djungle, data=snouter)
summary(ols1)
image(xtabs(residuals(ols1)~X+Y, data=snouter))
