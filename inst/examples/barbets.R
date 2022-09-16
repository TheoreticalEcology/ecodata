library(ape)
library(effects)
library(lme4)


dat = read.csv(url("http://www.phytools.org/Cordoba2017/data/Barbetdata.csv"),
               header = TRUE, row.names = 1)
tree = read.nexus(url("http://www.phytools.org/Cordoba2017/data/BarbetTree.nex"))

dat$species = as.factor(row.names(dat))
plot(tree)

tree$tip.label %in% rownames(dat)


model = lm(log(Lnote) ~ Lnalt + I(Lnalt^.5) + I(Lnalt^2), data = dat)
summary(model)
plot(model)

#plot(allEffects(model, partial.residuals = T), selection = 1)
plot(allEffects(model, partial.residuals = T))

res = simulateResiduals(model)
plot(res)
testDispersion(res)

