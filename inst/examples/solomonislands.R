solomonIsland_df <- solomonislands
head(solomonIsland_df)


# factorize variables -------------------------------------------------
solomonIsland_df$Island = as.factor(solomonIsland_df$Island)


# plotting variables -------------------------------------------------
plot(solomonIsland_df$Species, 1:nrow(solomonIsland_df))
plot(solomonIsland_df$Island, solomonIsland_df$Species)

fit <- glm(Species ~ Area + Distance, data=solomonIsland_df, family = poisson)
summary(fit)
image(xtabs(residuals(fit)~Area + Distance, data=solomonIsland_df))
