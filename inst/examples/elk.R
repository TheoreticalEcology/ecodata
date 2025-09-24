
plot(as.factor(elk$presence) ~ elk$dist_roads)
m0 = glm(presence ~ dist_roads, data = elk)
summary(m0)
