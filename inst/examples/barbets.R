library(ape)

dat = barbetData
tree = barbetTree

dat$species = as.factor(row.names(dat))
plot(tree)

#note
tree$tip.label %in% rownames(dat)

model = lm(log(Lnote) ~ Lnalt , data = dat)
summary(model)


