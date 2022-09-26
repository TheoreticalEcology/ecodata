library(ape)
library(geiger)
# Calculate phylogenetic distance matrix for species in the seedBank dataset:
species = unique(seedBank$Species)
species_df = data.frame(Species = species)
rownames(species_df) = species
obj = name.check(plantPhylo, species_df)

# drop rest of the species 
phyl.upd = drop.tip(plantPhylo, obj$tree_not_data)
summary(phyl.upd)

# check the names in the tree and in the data set
name.check(phyl.upd, species_df)

phyl.upd2 = multi2di(phyl.upd)

# phylogenetic distance matrix
dist_phylo = ape::cophenetic.phylo(phyl.upd2)
