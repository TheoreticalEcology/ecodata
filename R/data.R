#### anolisData #####

#' anolisData
#'
#' anolisData data from Dormann et al., Methods to account for spatial autocorrelation in the analysis of species distributional data: A review Ecography, 2007, 30, 609-628
#'
#' From Wikipedia:
#'
#' Rhinogradentia is a fictitious order of mammal invented by German zoologist Gerolf Steiner. Members of the order, known as rhinogrades or anolisDatas, are characterized by a nose-like feature called a nasorium, which evolved to fulfill a wide variety of functions in different species. Steiner also created a fictional persona, naturalist Harald Stuempke, who is credited as author of the 1957 book Bau und Leben der Rhinogradentia (translated into English in 1967 as The anolisDatas: Form and Life of the Rhinogrades). According to Steiner, it is the only remaining record of the animals, which were wiped out, along with all the world's Rhinogradentia researchers, when the small Pacific archipelago they inhabited sank into the ocean due to nearby atomic bomb testing.
#'
#' Successfully mimicking a genuine scientific work, Rhinogradentia has appeared in several publications without any note of its fictitious nature, sometimes in connection with April Fools' Day.
#'
#' From the paper: We have a data frame with several anolisData response variables (you can think of those as different studies), of different types (continous, count, binary data). Explanatory variables are x, y, rain, djungle!
#'
#' @author Florian Hartig
"anolisData"


#### anolisTree #####

#' anolisTree
#'
#' anolisTree data from Dormann et al., Methods to account for spatial autocorrelation in the analysis of species distributional data: A review Ecography, 2007, 30, 609-628
#'
#' From Wikipedia:
#'
#' Rhinogradentia is a fictitious order of mammal invented by German zoologist Gerolf Steiner. Members of the order, known as rhinogrades or anolisTrees, are characterized by a nose-like feature called a nasorium, which evolved to fulfill a wide variety of functions in different species. Steiner also created a fictional persona, naturalist Harald Stuempke, who is credited as author of the 1957 book Bau und Leben der Rhinogradentia (translated into English in 1967 as The anolisTrees: Form and Life of the Rhinogrades). According to Steiner, it is the only remaining record of the animals, which were wiped out, along with all the world's Rhinogradentia researchers, when the small Pacific archipelago they inhabited sank into the ocean due to nearby atomic bomb testing.
#'
#' Successfully mimicking a genuine scientific work, Rhinogradentia has appeared in several publications without any note of its fictitious nature, sometimes in connection with April Fools' Day.
#'
#' From the paper: We have a data frame with several anolisTree response variables (you can think of those as different studies), of different types (continous, count, binary data). Explanatory variables are x, y, rain, djungle!
#'
#' @author Florian Hartig
"anolisTree"


#### Arthritis #####

#' Arthritis
#'
#' Arthritis treatment data
#'
#' @format A 'data.frame': 84 obs. of 5 variables:
#' \describe{
#'  \item{ID}{Patient ID.}
#'  \item{Treatment}{Factor indicating treatment (Placebo, Treated).}
#'  \item{Sex}{Factor indicating sex (Female, Male).}
#'  \item{Age}{Age of patient.}
#'  \item{Improved}{Ordered factor indicating treatment outcome (None, Some, Marked).}
#' }
#' @author Florian Hartig
#' @source \url{https://www.picostat.com/dataset/r-dataset-package-vcd-arthritis}
#' @example inst/examples/Arthritis.R
"arthritis"


#### barbetData #####

#' barbetData
#'
#' This data set comes from \url{http://www.phytools.org/Cordoba2017} and is about fictional birds and their attributes.
#'
#' @details This is the data set belonging to the phylogenetic tree "barbetTree".
#'
#' @format A 'data.frame': 33 obs. of 8 variables:
#' \describe{
#'  \item{wing}{ (numeric).}
#'  \item{Lnalt}{Altitude at which a species is found (numeric).}
#'  \item{patch}{ (numeric).}
#'  \item{colour}{ (numeric).}
#'  \item{Frequency}{ (numeric).}
#'  \item{Length}{ (numeric).}
#'  \item{Lnote}{Length of the note in the bird's respective song (numeric).}
#' }
#' @author Florian Hartig
#' @source \url{http://www.phytools.org/Cordoba2017/data/Barbetdata.csv}
#' @example inst/examples/barbets.R
"barbetData"


#### barbetTree #####

#' barbetTree
#'
#' This data set comes from \url{http://www.phytools.org/Cordoba2017} and is about fictional birds and their attributes.
#'
#' @details This is a phylogenetic tree, resp. dendrogram belonging to the "barbetData" data set.
#' Hint: There are some species in the tree for which we have no observations.
#'
#' @format A 'list': List of 5.
#' \describe{
#'  \item{edge}{Edges of the tree. First, all leaves are counted like internal nodes, then the tree is traversed from the root edge, going right before left. Each row corresponds to an edge, the first column is the starting node, the second is the target. (2 column matrix, integer).}
#'  \item{edge.length}{Length of the corresponding edge (same number of elements as rows in tree$edge) (numeric).}
#'  \item{Nnode}{Number of internal nodes (edges between species); Number of tips / leaves - 1 (integer).}
#'  \item{root.edge}{Length of the leftmost edge, resp the stem (not displayed every time in plots) (numeric).}
#'  \item{tip.label}{Names of the species (character).}
#' }
#' @author Florian Hartig
#' @source \url{http://www.phytools.org/Cordoba2017/data/BarbetTree.nex}
#' @example inst/examples/barbets.R
"barbetTree"


#### Bees #####

#' Bees
#'
#' Honeybee data
#'
#' @details American Foulbrood (AFB) is an infectious disease for honeybees (Apis mellifera). The spores of the bacterium "Paenibacillus larvae" infect honeybee larvae. These spores are highly infective and one dead infested honeybee larva might spread billions of new spores.
#' Note: This is nested data, because there are several observations from each hive!
#'
#' @format A 'data.frame': 72 obs. of 7 variables:
#' \describe{
#'  \item{Rawdata}{??? (numeric).}
#'  \item{Spobee}{Response variable. Density of spores (numeric).}
#'  \item{Hive}{ID of the respective hive. (integer, 1 - 24).}
#'  \item{X}{Assuming coordinates (integer).}
#'  \item{Y}{Assuming coordinates (numeric).}
#'  \item{Infection}{Degree of infection. (integer: 0 (none), 1 (minor), 2 (moderate), 3 (major)).}
#'  \item{BeesN}{Bees per hive (integer).}
#' }
#' @author Florian Hartig
#' @example inst/examples/bees.R
"bees"


#### Bird Abundance ####

#' Bird Abundance
#'
#' Abundance of birds in forest fragments in Australia
#'
#' @author Florian Hartig
#'
#' @format A 'data.frame': 56 obs. of 8 variables:
#' \describe{
#'  \item{SITE}{Site ID.}
#'  \item{ABUND}{Bird abundance.}
#'  \item{AREA}{Area.}
#'  \item{DIST}{Distance to the next forest fragment.}
#'  \item{LDIST}{Distance to the next large forest fragment}
#'  \item{YR.ISOL}{Years since the site was isolated / fragmented.}
#'  \item{GRAZE}{Grazing intensity in the surrounding.}
#'  \item{ALT}{Altitude.}
#' }
#' @source \url{http://biometry.github.io/APES/}
#' @example inst/examples/birdabundance.R
"birdabundance"


#### Bird attractiveness ####

#' Feeding of Bird Nestlings
#'
#' A data set containing observations of items fed to bird nestlings,
#' depending on their attractiveness.
#'
#' @author Florian Hartig
#'
#' @format A 'data.frame': 25 obs. of 2 variables
#' \describe{
#'  \item{feeding}{Items fed to a bird.}
#'  \item{attractiveness}{Estimated attractiveness of a bird.}
#'   ...
#' }
#' @source \url{http://biometry.github.io/APES/}
#' @example inst/examples/birdfeeding.R
"birdfeeding"


#### Flower ####

#' Flower Image Recognition Data
#'
#' Downsampled (80x80 pixels) images of 5 flower species from \url{https://www.kaggle.com/alxmamaev/flowers-recognition}.
#'
#' The function will return a list with three elements:
#' @return
#' \itemize{
#'  \item train - Images for training
#'  \item labels - Labels for train split, 0 - 4
#'  \item test - Images for testing
#' }
#' @author Maximilian Pichler
#' @export

dataset_flower = function() {
  cache_dir = file.path(path.expand("~"), ".EcoData")
  datadir_base = path.expand(cache_dir)

  dir.create(datadir_base, showWarnings = FALSE)
  if(file.access(datadir_base, mode = 2) < 0) {
    datadir_base = file.path("/tmp", ".Ecodata")
  }
  dir.create(datadir_base, showWarnings = FALSE)
  data_path = file.path(datadir_base, "flower.rda")
  if(!file.exists(data_path)) {
    options(timeout = 1200)
    utils::download.file("https://www.dropbox.com/s/slgml71w22of4n4/flower.rda?raw=1",
                         destfile = data_path)
  }
  load(data_path)

  return(flower)
}
"flower"


#### Marmots ####

#' Marmots
#'
#' Unfortunately no description available.
#'
#' @format A 'data.frame': 896 obs. of 55 variables.
#'
#' @author Florian Hartig
"marmots"


#### NASA ####

#' NASA
#'
#' Nasa asteroids
#'
#' A collection about asteroids and their characteristics from \url{https://www.kaggle.com/shrutimehta/nasa-asteroids-classification}. The aim is to predict whether the asteroids are hazardous or not.
#'
#' \describe{
#'  \item{Neo.Reference.ID }{ID (int).}
#'  \item{Name}{Asteroid name (int).}
#'  \item{Absolute.Magnitude}{Asteroid absolute magnitude side (numeric).}
#'  \item{Est.Dia.in.KM.min.}{Estimated diameter in KM minimum (numeric).}
#'  \item{Est.Dia.in.KM.max.}{Estimated diameter in KM maximum (numeric).}
#'  \item{Est.Dia.in.M.min}{Estimated diameter in meter minimum (numeric).}
#'  \item{Est.Dia.in.M.max}{Estimated diameter in meter maximum (numeric).}
#'  \item{Est.Dia.in.Miles.min.}{Estimated diameter in miles minimum (numeric).}
#'  \item{Est.Dia.in.Miles.max.}{Estimated diameter in miles maximum (numeric).}
#'  \item{Est.Dia.in.Feet.min.}{Estimated diameter in feet minimum (numeric).}
#'  \item{Est.Dia.in.Feet.max.}{Estimated diameter in feet maximum (numeric).}
#'  \item{Close.Approach.Date}{Asteroid closes approach date (factor).}
#'  \item{Epoch.Date.Close.Approach}{}
#'  \item{Relative.Velocity.km.per.sec}{Asteroid relative velocity speed in km per seconds (numeric).}
#'  \item{Relative.Velocity.km.per.hr}{Asteroid relative velocity speed in km per hours (numeric).}
#'  \item{Miles.per.hour}{Asteroid relative velocity speed in miles per hours (numeric).}
#'  \item{Miss.Dist..Astronomical.}{Asteroid miss distance in astronomical units (numeric).}
#'  \item{Miss.Dist..lunar.}{Asteroid miss distance in lunar units (numeric).}
#'  \item{Miss.Dist..kilometers.}{Asteroid miss distance in kilometers (numeric).}
#'  \item{Miss.Dist..miles.}{Asteroid miss distance in miles (numeric).}
#'  \item{Orbiting.Body}{Number of orbiting bodys (factor).}
#'  \item{Orbit.ID}{Orbit ID (int).}
#'  \item{Orbit.Determination.Date}{Orbit determination date (factor).}
#'  \item{Orbit.Uncertainity}{Orbit uncertainty (int).}
#'  \item{Minimum.Orbit.Intersection}{Orbit minimum intersection distance (numeric).}
#'  \item{Jupiter.Tisserand.Invariant}{Jupiter tisserand invariant.}
#'  \item{Epoch.Osculation}{Epoch Osculation.}
#'  \item{Eccentricity}{Measure of the non-circularity of an orbit (numeric).}
#'  \item{Semi.Major.Axis}{Major axis of an ellipse is its longest diameter.}
#'  \item{Inclination}{Orbital inclination measures the tilt of an object's orbit around a celestial body (numeric).}
#'  \item{Asc.Node.Longitude}{Longitude of the ascending node (numeric).}
#'  \item{Orbital.Period}{Orbital period as the time the astronomical object takes to complete one orbit around another object (numeric).}
#'  \item{Perihelion.Distance}{Distace of perihelion (numeric).}
#'  \item{Perihelion.Arg}{Argument of perihelion (numeric).}
#'  \item{Aphelion.Dist}{Aphelion distance (numeric).}
#'  \item{Perihelion.Time}{Perihelion Time (numeric).}
#'  \item{Mean.Anomaly}{Mean.Anomaly (numeric.)}
#'  \item{Mean.Motion}{Mean.Motion (numeric).}
#'  \item{Equinox}{}
#'  \item{Hazardous}{Response variable (0 or 1).}
#' }
#' @author Maximilian Pichler
#' @example inst/examples/nasa.R
"nasa"


#### Plantcounts ####

#' Plantcounts
#'
#' Number of plant species in a grid of quadrants around Regensburg.
#'
#' @format A 'data.frame': 285 obs. of 6 variables:
#' \describe{
#'  \item{richness}{Plant "species" richness. No. of plant taxa records (species, including some aggregates) in map quadrants (Topographische Karte, "Viertelmesstischblatt"), ca. 1980. from Mergenthaler, O. 1982: Verbreitungsatlas zur Flora von Regensburg. In: Hoppea, Denkschriften der Regensburgischen Botanischen Gesellschaft. Bd. 40, S. V-XII, 1-297. http://digital.bib-bvb.de/view/bvbmets/viewer.0.6.4.jsp?folder_id=0&dvs=1597093892683~24&pid=1537325&locale=de&usePid1=true&usePid2=true}
#'  \item{tk}{Quadrant id (Topographische Karte).}
#'  \item{area}{Quadrant area.}
#'  \item{agrarea}{Fraction of agricultural area per quadrant (agricultural landuse classes without forest, from https://doi.pangaea.de/10.1594/PANGAEA.910837).}
#'  \item{lat}{Latitude.}
#'  \item{lon}{Longitude.}
#' }
#' @author Lukas Heiland, Florian Hartig
#' @example inst/examples/plantcounts.R
"plantcounts"


#### Plant Pollinators ####

#' Plant Pollinators
#'
#' A data set of plant - pollinator interactions and their traits for important crop plants
#'
#' @format A 'data.frame': 20,480 obs. of 18 variables:
#' \describe{
#'  \item{crop}{Plant name.}
#'  \item{insect}{Insect name.}
#'  \item{type}{Type of plant (arboreous or herbaceous).}
#'  \item{season}{Flowering season.}
#'  \item{diameter}{Flower diameter in mm.}
#'  \item{corolla}{Corolla shape (open, campanulate, or tubular).}
#'  \item{colour}{Flower colour.}
#'  \item{nectar}{Nectar (yes or no).}
#'  \item{b.symstem}{Bloom system (type of pollination: insects, insects / wind, or insects / birds).}
#'  \item{s.pollination}{Self pollination (yes or no).}
#'  \item{inflorescence}{Inflorescence (yes, solitary, solitary/pairs, solitary / clusters).}
#'  \item{composite}{Composite flowers (yes or no).}
#'  \item{guild}{Five pollinator traits: Guild (bumblebees, butterflies etc.).}
#'  \item{tongue}{Tongue length in mm.}
#'  \item{body}{Body size in mm.}
#'  \item{sociality}{Soziality (yes or no).}
#'  \item{feeding}{Feeding behaviour (oligolectic, polylectic, or parasitic).}
#'  \item{interaction}{Interaction between insect and plant (yes or no).}
#'}
#' @author Andreas Ettner, Florian Hartig
#'
#' @details The data set was compiled by M., Boreux and analyzed in Pichler et al., 2020.
#'
#' @references Pichler, M., Boreux, V., Klein, A. M., Schleuning, M., & Hartig, F. (2020). Machine learning algorithms to infer trait‐matching and predict species interactions in ecological networks. Methods in Ecology and Evolution, 11(2), 281-293.
#'
#' @source \url{https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.13329}
"plantPollinators"


#### Plant Pollinators ####

#' Plant Pollinators
#'
#' plant pollination by different insects.
#' This data set is a machine learning version of the original one. Containing variable NAs in the "interaction" variable {plantPollinations$interactions}. Generated with the example code.
#'
#' @format A 'data.frame': 20,480 obs. of 18 variables:
#' \describe{
#'  \item{crop}{Plant name.}
#'  \item{insect}{Insect name.}
#'  \item{type}{Type of plant (arboreous or herbaceous).}
#'  \item{season}{Flowering season.}
#'  \item{diameter}{Flower diameter in mm.}
#'  \item{corolla}{Corolla shape (open, campanulate, or tubular).}
#'  \item{colour}{Flower colour.}
#'  \item{nectar}{Nectar (yes or no).}
#'  \item{b.symstem}{Bloom system (type of pollination: insects, insects / wind, or insects / birds).}
#'  \item{s.pollination}{Self pollination (yes or no).}
#'  \item{inflorescence}{Inflorescence (yes, solitary, solitary/pairs, solitary / clusters).}
#'  \item{composite}{Composite flowers (yes or no).}
#'  \item{guild}{Five pollinator traits: Guild (bumblebees, butterflies etc.).}
#'  \item{tongue}{Tongue length in mm.}
#'  \item{body}{Body size in mm.}
#'  \item{sociality}{Soziality (yes or no).}
#'  \item{feeding}{Feeding behaviour (oligolectic, polylectic, or parasitic).}
#'  \item{interaction}{Interaction between insect and plant (yes or no).}
#'}
#' @author Andreas Ettner
#' @source \url{https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.13329}
#' @example inst/examples/plantPollinations.R
"plantPollinator_df"


#### Red Cards ####

#' Red Cards
#'
#' Soccer red cards data set
#'
#' @description This is a data set from the English premier league. The data was compiled to test if soccer referees are more likely to give red cards to dark-skin-toned players than to light-skin-toned players.
#'
#' @details The data was analyzed in a many-analysed project. The estimated effect sizes ranged from 0.89 to 2.93 (Mdn = 1.31) in odds-ratio units. Twenty teams (69%) found a statistically significant positive effect, and 9 teams (31%) did not observe a significant relationship. The variation is explained by the statistical approach and the choice of predictor variables.
#'
#' @format A 'data.frame': 146,028 obs. of 28 variables:
#' \describe{
#'  \item{playershort}{Short player ID.}
#'  \item{player}{Player name.}
#'  \item{club}{Player club.}
#'  \item{leagueCountry}{Country of player club (England, Germany, France, and Spain).}
#'  \item{birthday}{Player birthday.}
#'  \item{height}{Player height (in cm).}
#'  \item{weight}{Player weight (in kg).}
#'  \item{position}{Detailed player position.}
#'  \item{games}{Number of games in the player-referee dyad.}
#'  \item{victories}{Victories in the player-referee dyad.}
#'  \item{ties}{Ties in the player-referee dyad.}
#'  \item{defeats}{Losses in the player-referee dyad.}
#'  \item{goals}{Goals scored by a player in the player-referee dyad.}
#'  \item{yellowCards}{Number of yellow cards player received from referee.}
#'  \item{yellowReds}{Number of yellow-red cards player received from referee.}
#'  \item{redCards}{Number of red cards player received from referee.}
#'  \item{photoID}{ID of player photo (if available).}
#'  \item{rater1}{Skin rating of photo by rater 1 (5-point scale ranging from very light skin, to very dark skin).}
#'  \item{rater2}{Skin rating of photo by rater 2 (5-point scale ranging from very light skin, to very dark skin).}
#'  \item{refNum}{Unique referee ID number (referee name removed for anonymizing purposes).}
#'  \item{refCountry}{Unique referee country ID number (country name removed for anonymizing purposes).}
#'  \item{Alpha_3}{Unique referee country ID number (country name removed for anonymizing purposes).}
#'  \item{meanIAT}{Mean implicit bias score (using the race IAT) for referee country, higher values correspond to faster white | good, black | bad associations.}
#'  \item{nIAT}{Sample size for race IAT in that particular country.}
#'  \item{seIAT}{Standard error for mean estimate of race IAT.}
#'  \item{meanExp}{Mean explicit bias score (using a racial thermometer task) for referee country, higher values correspond to greater feelings of warmth toward whites versus blacks.}
#'  \item{nExp}{Sample size for explicit bias in that particular country.}
#'  \item{seExp}{Standard error for mean estimate of explicit bias measure.}
#' }
#' @author Andreas Ettner, Florian Hartig
#' @source \url{https://journals.sagepub.com/doi/10.1177/2515245917747646}
#' @example inst/examples/redCards.R
"redCards"


#### Regrowth ####

#' Regrowth
#'
#' Plant regrowth observations
#'
#' @format A 'data.frame': 40 obs. of 3 variables:
#' \describe{
#'  \item{Root}{Root biomass (numeric).}
#'  \item{Fruit}{Fruit biomass (numeric).}
#'  \item{Grazing}{Grazed or not (factor).}
#' }
#' @author Florian Hartig
#' @example inst/examples/regrowth.R
"regrowth"


#### RIKZ ####

#' RIKZ
#'
#' Data from the dutch National Institute for Coastal and Marine Management (RIKZ: Rijksinstituut voor Kust en Zee) to investigate the relationship between environmentalfactors and how they might affect benthic fauna.
#'
#' Downloaded from https://www.uni-koblenz-landau.de/en/campus-landau/faculty7/environmental-sciences/landscape-ecology/Teaching/RIKZ_data/
#'
#' @format A 'data.frame': 45 obs. of 17 variables:
#' \describe{
#'  \item{Sample}{Index of samping station.}
#'  \item{Polychaeta}{Number of species that were found of this faunal group.}
#'  \item{Crustacea}{Number of species that were found of this faunal group.}
#'  \item{Mollusca}{Number of species that were found of this faunal group.}
#'  \item{Insecta}{Number of species that were found of this faunal group.}
#'  \item{week}{In which of 4 weeks was this plot probed.}
#'  \item{angle1}{Angle of the station.}
#'  \item{angle2}{Slope of the beach at the plot.}
#'  \item{exposure}{Index composed of wave action etc.}
#'  \item{salinity}{Salinity at the plot.}
#'  \item{temperature}{Temperature measured.}
#'  \item{NAP}{Altitude of the plot compared to the mean sea level.}
#'  \item{penetrability}{Penetrability.}
#'  \item{grainsize}{Average diameter of sand grains.}
#'  \item{humus}{Fraction of organic material.}
#'  \item{chalk}{Amount of chalk measured.}
#'  \item{sorting1}{Variable from observational design.}
#'
#' }
#' @author Florian Hartig
#' @source \url{http://evol.bio.lmu.de/_statgen/Multivariate/11SS/RIKZGroups.txt}
#' @example inst/examples/rikz.R
"rikz"


#### Snouter #####

#' Snouter
#'
#' Snouter data from Dormann et al., Methods to account for spatial autocorrelation in the analysis of species distributional data: A review Ecography, 2007, 30, 609-628
#'
#' From Wikipedia:
#'
#' Rhinogradentia is a fictitious order of mammal invented by German zoologist Gerolf Steiner. Members of the order, known as rhinogrades or snouters, are characterized by a nose-like feature called a nasorium, which evolved to fulfill a wide variety of functions in different species. Steiner also created a fictional persona, naturalist Harald Stuempke, who is credited as author of the 1957 book Bau und Leben der Rhinogradentia (translated into English in 1967 as The Snouters: Form and Life of the Rhinogrades). According to Steiner, it is the only remaining record of the animals, which were wiped out, along with all the world's Rhinogradentia researchers, when the small Pacific archipelago they inhabited sank into the ocean due to nearby atomic bomb testing.
#'
#' Successfully mimicking a genuine scientific work, Rhinogradentia has appeared in several publications without any note of its fictitious nature, sometimes in connection with April Fools' Day.
#'
#' From the paper: We have a data frame with several snouter response variables (you can thing of those as different studies), of different types (continous, count, binary data). Explanatory variables are "X", "Y", "rain", "djungle"!
#'
#' @author Florian Hartig
#' @example inst/examples/snouter.R
"snouter"


#### Solomon Islands ####

#' Solomon Islands - Island Biogeography
#'
#' A classical data set of island biogeography - Number of species found on the Solomon islands, as a function of distance to mainland and island area
#'
#' @format A 'data.frame': 40 obs. of 3 variables:
#' \describe{
#'  \item{Island}{Island name (character).}
#'  \item{Species}{Species richness on the respective island (numeric).}
#'  \item{Area}{Island area (numeric).}
#'  \item{Distance}{Distance to mainland (numeric).}
#' }
#' @author Florian Hartig
#' @example inst/examples/solomonislands.R
"solomonislands"


#### Streams ####

#' Streams
#'
#' Data on water measurements of 16 rivers taken before and after a water treatment filter.
#'
#' @format A 'data.frame': 16 obs. of 2 variables:
#' \describe{
#'  \item{down}{After the water treatment filter.}
#'  \item{up}{Before the water treatment filter.}
#' }
#' @author Florian Hartig
#' @source \url{https://raw.githubusercontent.com/biometry/APES/master/Data/Simone/streams.txt}
"streams"


#### Students ####

#' Students
#'
#' The data was obtained in a survey of students of math and portuguese language courses in secondary school. It contains a lot of interesting social, gender and study information about students. You can use it for some EDA or try to predict students final grade.
#'
#' @format A 'data.frame': 382 obs. of 53 variables:
#' \describe{
#'  \item{school}{Student's school (binary: 'GP' - Gabriel Pereira or 'MS' - Mousinho da Silveira).}
#'  \item{sex}{Student's sex (binary: 'F' - female or 'M' - male).}
#'  \item{age}{Student's age (numeric: from 15 to 22).}
#'  \item{address}{Student's home address type (binary: 'U' - urban or 'R' - rural).}
#'  \item{famsize}{Family size (binary: 'LE3' - less or equal to 3 or 'GT3' - greater than 3).}
#'  \item{Pstatus}{Parent's cohabitation status (binary: 'T' - living together or 'A' - apart).}
#'  \item{Medu}{Mother's education (numeric: 0: none, 1: primary education (4th grade), 2: 5th to 9th grade, 3: secondary education or 4: higher education).}
#'  \item{Fedu}{Father's education (numeric: 0: none, 1: primary education (4th grade), 2: 5th to 9th grade, 3: secondary education or 4: higher education).}
#'  \item{Mjob}{Mother's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other').}
#'  \item{Fjob}{Father's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other').}
#'  \item{reason}{Reason to choose this school (nominal: close to 'home', school 'reputation', 'course' preference or 'other').}
#'  \item{guardian}{Student's guardian (nominal: 'mother', 'father' or 'other').}
#'  \item{traveltime}{Home to school travel time (numeric: 1: <15 min., 2: 15 to 30 min., 3: 30 min. to 1 hour, or 4: >1 hour).}
#'  \item{studytime}{Weekly study time (numeric: 1: <2 hours, 2: 2 to 5 hours, 3: 5 to 10 hours, or 4: >10 hours).}
#'  \item{failures}{Number of past class failures (numeric: n if 1 <= n < 3, else 4).}
#'  \item{schoolsup}{Extra educational support (binary: yes or no).}
#'  \item{famsup}{Family educational support (binary: yes or no).}
#'  \item{paid}{Extra paid classes within the course subject (Math or Portuguese) (binary: yes or no).}
#'  \item{activities}{Extra-curricular activities (binary: yes or no).}
#'  \item{nursery}{Attended nursery school (binary: yes or no).}
#'  \item{higher}{Wants to take higher education (binary: yes or no).}
#'  \item{internet}{Internet access at home (binary: yes or no).}
#'  \item{romantic}{With a romantic relationship (binary: yes or no).}
#'  \item{famrel}{Quality of family relationships (numeric: from 1 - very bad to 5 - excellent).}
#'  \item{freetime}{Free time after school (numeric: from 1 - very low to 5 - very high).}
#'  \item{goou}{Going out with friends (numeric: from 1 - very low to 5 - very high).}
#'  \item{Dalc}{Workday alcohol consumption (numeric: from 1 - very low to 5 - very high).}
#'  \item{Walc}{Weekend alcohol consumption (numeric: from 1 - very low to 5 - very high).}
#'  \item{health}{Current health status (numeric: from 1 - very bad to 5 - very good).}
#'  \item{absences}{Number of school absences (numeric: from 0 to 93).}
#'
#'   These grades are related with the course subject, Math or Portuguese:
#'
#'  \item{G1}{First period grade (numeric: from 0 to 20)}
#'  \item{G2}{Second period grade (numeric: from 0 to 20)}
#'  \item{G3}{Final grade (numeric: from 0 to 20, output target)}
#'}
#'
#' @note There are several (382) students that belong to both data sets. These students can be identified by searching for identical attributes that characterize each student, as shown in the annexed R file.
#'
#' Source Information
#'
#' P. Cortez and A. Silva. Using Data Mining to Predict Secondary School Student Performance. In A. Brito and J. Teixeira Eds., Proceedings of 5th FUture BUsiness TEChnology Conference (FUBUTEC 2008) pp. 5-12, Porto, Portugal, April, 2008, EUROSIS, ISBN 978-9077381-39-7.
#'
#' Fabio Pagnotta, Hossain Mohammad Amran. 
#'
#' https://archive.ics.uci.edu/ml/datasets/STUDENT+ALCOHOL+CONSUMPTION
#' Released Under CC0: Public Domain License
#'
#' @author Florian Hartig
#' @source \url{https://www.kaggle.com/uciml/student-alcohol-consumption}
#' @example inst/examples/students.R
"students"


#### Titanic ####

#' Titanic Data
#'
#' Survival of passengers on the MS titanic
#'
#' @format A 'data.frame': 1310 obs. of 14 variables:
#' \describe{
#'  \item{pclass}{Passenger class (int).}
#'  \item{survived}{Did the passenger survive (int, 1 = survived)}.
#'  \item{name}{Pasenger name (character).}
#'  \item{sex}{Passenger sex (character).}
#'  \item{age}{Passenger age (numeric).}
#'  \item{sibsp}{Number of siblings / spouses aboard the Titanic (int).}
#'  \item{parch}{Number of parents / children aboard the Titanic (int).}
#'  \item{ticket}{Ticket number (character).}
#'  \item{fare}{Passenger fare (numeric).}
#'  \item{cabin}{Cabin number (character).}
#'  \item{embarked}{Port of Embarkation (character).}
#'  \item{boat}{Passenger rescue boat number (character).}
#'  \item{body}{Passenger body size (int).}
#'  \item{home.dest}{Passenger home destination (character).}
#' }
#' @author Florian Hartig
#' @source \url{http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets}
#' @example inst/examples/titanic.R
"titanic"


#### Titanic ####

#' Titanic Data for Machine Learning
#'
#' Survival of passengers on the MS titanic
#'
#' @format A 'data.frame': 1309 obs. of 14 variables:
#' \describe{
#'  \item{pclass}{Passenger class (int).}
#'  \item{survived}{Did the passenger survive (int, 1 = survived).}
#'  \item{name}{Pasenger name (character).}
#'  \item{sex}{Passenger sex (character).}
#'  \item{age}{Passenger age (numeric).}
#'  \item{sibsp}{Number of siblings / spouses aboard the Titanic (int).}
#'  \item{parch}{Number of parents / children aboard the Titanic (int).}
#'  \item{ticket}{Ticket number (character).}
#'  \item{fare}{Passenger fare (numeric).}
#'  \item{cabin}{Cabin number (character).}
#'  \item{embarked}{Port of Embarkation (character).}
#'  \item{boat}{Passenger rescue boat number (character).}
#'  \item{body}{Passenger body size (int).}
#'  \item{home.dest}{Passenger home destination (character).}
#' }
#' Survival status is unknown for 50% of the passengers and must be predicted.
#'
#' @author Florian Hartig, Maximilian Pichler
#' @source \url{http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets} \url{https://www.kaggle.com/c/titanic}
#' #' @example inst/examples/titanic_ml.R
"titanic_ml"


#### Thickness ####

#' Thickness
#'
#' thickness of coal
#'
#' Measured thickness of coal seams at different coordinates from
#' \describe{
#'  \item{ID}{ID.}
#'  \item{east}{East coordinates.}
#'  \item{north}{North coordinates.}
#'  \item{thick}{Thickness of coal seams.}
#'  \item{soil}{Measuring the soil quality.}
#'  \item{dummy}{Dummy grouping variable.}
#' }
#' @author Andreas Ettner, Florian Hartig
#' @source \url{https://stats.idre.ucla.edu/r/faq/how-do-i-model-a-spatially-autocorrelated-outcome/}
#' @example inst/examples/thickness.R
"thickness"


#### Volcano Island ####

#' Volcano Island
#'
#' Ecological observations on a Lonely Volcano island
#'
#' @details
#'
#' We are looking at the Maunga Whau (Mt Eden), one of about 50 volcanos in the Auckland volcanic field.
#'
#' A crazy ecologist has created 100 permanent beetle observation plots across the volcano (random), and monitored them for 10 years, so you have one observation each year. Below a visualization of the terrain
#'
#' We have also a bunch of other things going on. For example,
#'
#' * Actually, we have two types of beetles. The second type is much more complicated, I'm curious if you find out what's going on with them
#'
#' * There is the wind, which might depend on other variables
#'
#' * There are lizards on the island that eat beetles. The lizards always live at the same place, however, they are hard to spot, so that the ecologist didn't always notice them. However, every time they were spotted, they were also observed.
#'
#' * Moreover, the ecologist also did a beetle survival study each year at each site. Don't ask me how he did it, but you have get for each year and each site how many of 20 beetles survived.
#'
#' The main question of the study was to understand how beetle abudance depends on altitude. Here is an overview of counts per site and year.
#'
#' @format A 'data.frame': 1000 obs. of 21 variables.
#' @author Florian Hartig
#' @example inst/examples/volcanoislandHelp.R
"volcanoisland"


#### Wine #####

#' Wine
#'
#' Wine data from \url{https://archive.ics.uci.edu/ml/datasets/wine+quality}.
#'
#' The data set is a collection of wines of different qualities. The wines are described by physiochemical variables.
#'
#' \describe{
#'  \item{fixed.acidity}{Fixed acidity (numeric).}
#'  \item{volatile.acidity}{Volatile acidity (numeric).}
#'  \item{citric.acid}{Citric acid (numeric).}
#'  \item{residual.sugar}{Residual sugar (numeric).}
#'  \item{chlorides}{Amount of chlorides measured (numeric).}
#'  \item{free.sulfur.dioxide}{Amount of free sulfur dioxide measured (numeric).}
#'  \item{total.sulfur.dioxide}{Amount of total sulfur dioxide measured (numeric).}
#'  \item{density}{Density.}
#'  \item{pH}{pH of the wine.}
#'  \item{sulphates}{Sulphates in the wine.}
#'  \item{alcohol}{Amount of alcohol measured.}
#'  \item{quality}{Response variable, ranges between 1 and 8.}
#' }
#'
#' @author Maximilian Pichler
"wine"



#### SOEP ####
#' Data from the german socio-economic panel
#' 
#' @details The following information is copied from the origina data provider at https://www.diw.de/en/diw_01.c.836543.en/soep_practice_dataset.html:
#' 
#' This dataset  is based on the original SOEP data, but provides the data in significantly altered and fully anonymous form. This means that the practice dataset can be used without the need for any contracts or user agreements. The practice dataset consists of original variables, covers five time points, and is available in the “long” format. The dataset is provided in German and English.
#' 
#' Dataset Information
#' 
#' Title: SOEP practice dataset
#' 
#' DOI info : 10.5684/soep.practice.v36
#' Collection period: 2015-2019
#' Publication Date: 31.01.2022
#' 
#' Population: Persons living in private households in Germany.
#' 
#' Number of individuals: 6.355
#' 
#' 
#' \itemize{
#'   \item id		Person ID 
#'   \item syear		Survey Year
#'   \item sex		Sex
#'   \item alter		Age of Individual
#'   \item anz_pers		Number of Persons in Household
#'   \item anz_kind		Number of Children in Household
#'   \item bildung		Number of Years of Education 
#'   \item erwerb		Employment Status
#'   \item branche		Industry Current Occupation
#'   \item einkommenj1		Gross Income from Main Job/Year
#'   \item einkommenj2		Gross Income from Secondary Employment/Year
#'   \item einkommenm1		Gross Income from Main Job/Month
#'   \item einkommenm2		Gross Income from Secondary Employment/Month
#'   \item gesund_org		subj. Health
#'   \item lebensz_org		Life Satisfaction
#' }
#' 
#' Selection: To anonymize the variables, an algorithm was used that largely maintains the longitudinal consistency in the original data.
#' 
#' Usability: The practice dataset is suited to calculating panel-specific univariate statistics (intra- and inter-individual correlation patterns, transition rates) in classes on descriptive methods. In the context of multivariate analysis, the dataset is useful for teaching (panel) regression techniques
#' 
#' Citation of data: SOEP Practice Dataset, Data from  2015-2019. 2022. DOI: 10.5684/soep.practice.v36
#' 
#' This data is licenced under CC BY-SA 4.0
#' 
#' @source https://environmentalcomputing.net/statistics/linear-models/linear-regression/
#' 
#' @author Florian Hartig
"soep"


#### seedBank ####

#' Seed bank data
#' 
#' @description 
#' Data for species with seed traits, environmental factors, and information about their ability to form natural seed banks.
#' 
#' 
#' @details  
#' The dataset comes from a study from Rosbakh, 2022a (environmental factors were obtained from Rosbakh, 2022b) and includes information about plant species, their vegetative and seed traits, environmental factors, and their ability to form natural seed banks.
#' 
#' The objective of this dataset is to identify which traits and environmental factors are responsible if species can naturally produce a seed bank. The ability to form seed banks is encoded as presence-absence and as a density. Data was collected at 17 sites for 286 species.
#' 
#' **Task:** Which environmental factors and traits explain the density or occurrence of a seed bank?
#' 
#' 
#' **Tip:**
#' 
#' | Effects        | Variables                                                                         |
#' |-------------------------|----------------------------------------------|
#' | Response       | SBPA, SBDensity                                                                   |
#' | Fixed effects  | Altitude, SeedMass, SeedShape, SeedN, SeedPr, DormRank, Temp, Hum, Nitrogen, Grazing |
#' | Random effects | Site, species                                                                     |
#' 
#' 
#' **Variables:**
#'  
#' Species information:
#' 
#' \itemize{
#'   \item Species species
#'   \item SBPA presence or absence of seed bank
#'   \item SBDensity seed bank density
#' }
#' 
#' 
#' Environmental factors:
#' 
#' \itemize{
#'   \item Site Site id (17 sites)
#'   \item Altitude Altitude
#'   \item Temp Landolt's temperature
#'   \item Humidity Landolt's F
#'   \item Nitrogen Landolt's N
#'   \item Grazing Grazing 
#' }
#' 
#' 
#' Vegetative traits:
#' 
#' \itemize{
#'   \item SLA specific leaf aera
#'   \item CanopyHeight canopy height
#'   \item LeafN leaf nitrogen content
#'   \item LeafC foliar frost sensitivity
#' }
#' 
#' Seed traits:
#' 
#' \itemize{
#'   \item SeedMass	Seed morphology
#'   \item SeedShape	Seed morphology
#'   \item SeedN	Seed morphology
#'   \item SeedPr	Seed morphology
#'   \item SRH	Seed releasing height
#'   \item TV	Terminal velocity
#'   \item WingLoad	Wing loading
#'   \item EpiStein	Attachement potential (Steinschaf)
#'   \item EpiCow	Attachement potential (Cow)
#'   \item EpiMerino	Attachement potential (Merino)
#'   \item Endozoo	Potential for endozoochorous dispersal
#'   \item DormRank	Dormancy 'depth'
#'   \item T5	Base germination temperature
#'   \item T50	Temperature for 50% germination
#'   \item T95	Temperature for 95% germination
#'   \item Jwidth	Germination niche width (temperature)
#'   \item MGT	Mean germination time
#'   \item MGR	Mean germiation rate
#'   \item GSP	Germination speed
#'   \item UNC	Synchrony of germination
#'   \item SYN	Synchrony of germination
#'   \item Endosperm Endosperm
#' }
#' 
#' @note 
#' 
#' * start with lme4 (model checks are easier because of conditional simulations and the plotting option for residuals ~ random effects to identify random slopes (`plot(model, fitted(.)~sAltitude | Site))`)
#' * use `dispformula`in glmmTMB if there is heteroskedasticity
#' * scale your variables
#' 
#' @references 
#' Rosbakh, S., Chalmandrier, L., Phartyal, S., & Poschlod, P. (2022). Inferring community assembly processes from functional seed trait variation along elevation gradient. Journal of Ecology.
#' 
#' Rosbakh, S., Pichler, M., & Poschlod, P. (2022). Machine‐learning algorithms predict soil seed bank persistence from easily available traits. Applied Vegetation Science, 25(2), e12660.
#'
#' @example inst/examples/seedBank.R
#' @author Maximilian Pichler
"seedBank"




#### nitrogen Plant ####
#' nitrogen Plant data
#' 
#' Reconstruction of historical nitrogen depositions in alpine plants
#' 
#' Questions: Nitrogen ~ CO2+...?
#' 
#' Variables:
#' 
#' \itemize{
#'   \item Species species
#'   \item Year Year
#'   \item Altitude Altitude
#'   \item Discr carbon isotope discrimination
#'   \item WUEi intrinsic water use efficiency 
#'   \item WUEt instantaneous water use efficiency
#'   \item FoliarN foliar N contents
#'   \item FoliarCN foliar CN contents
#'   \item Foliad15N foliar N stable isotope composition
#'   \item Foliard13C foliar 13 C stable isotope composition
#'   \item Foliard13C_corrALT2000 foliar 13 C stable isotope composition corrected at Altitude = 20000
#'   \item 13Cair delta 13 C for atmospheric CO
#'   \item cica ratio of intercellular to ambient CO2 concentrations
#'   \item CO2conc CO2 concentration 
#'   \item VDP_Hpbg vapor pressure deficit at Hohenpeissenberg at 977 m a.s.l. 
#'   \item VDP_Alt vapor pressure deficit at altitude
#'   \item SiteID Site ID
#'   \item Collectiondate Collection date
#'   \item Latitude Latitude
#'   \item Longitude Longitude
#'   \item SampleID Sample ID
#'   \item Collectionsite Collection site
#' }
#' 
#' 
#' Dataset is from Rosbakh, 2021. 
#' 
#' 
#' @references 
#' 
#' Rosbakh, S., Auerswald, K., & Poschlod, P. (2021). Rising CO2 concentrations reduce nitrogen availability in alpine grasslands. Ecological Indicators, 129, 107990.
#' 
#' @author Maximilian Pichler
"nitrogenPlant"



#### Scouting Ants ####
#' Scouting Ants data
#' 
#' An experiment to test if there are scouting ants in the species Lasius niger.
#' 
#' 
#' @details The idea of this experiment was to see if there are certain individuals that do not follow pheromone trails (scouts). The idea for this originated because pheromone following behavior in Lasius niger is only around 70%, unusually low for ants. The question is thus if they just often don't follow on average, or if there are specialized individuals that do not follow pheromone trails.
#' 
#' In the experiments, ants were put 2 times in a y-maze. We want to see if their behaviour in the first visit predicts their behavior in the second visit. If that was the case, we would conclude that there are individuals that predictably do not follow pheromone trails (which may indicate that they are scouts, but could of course also mean that their sense of smell is impaired).
#' 
#' Variables:
#' 
#' * ant_group - for the first visit, whether the ant followed the pheromone trail or not, for the second visit, whether there was a switch or not
#' * ant_group_main - aggregation of ant_group - for observations of the first visit, just "Firstvisit", for the second visit, split by decision
#' * first.visit	a logical column returning 1 if this is the first visit, and 0 if it is not
#' * went.phero	a logical column returning 1 if the ant went towards the pheromone, and 0 if it did not
#' * phero.orientation	whether the Y maze arm marked with a pheromone trail was facing into the room, or towards the wall
#' * where.phero	whether the Y maze arm marked with a pheromone trail was on the right or lef, from the perspective of the Y-maze stem
#' * Orientation	Whether the left arm was facing towards the wall or towards the room
#' * Treatment	The direct of the pheromone trail (L or R) at the first or second test
#' * Colony	a unique ID for each colony
#' 
#' @note It may make sense to re-define factors / contrasts. For example, you could create a factor to see whether ants went left or right, or whether they switched their direction on the second visit. 
#' 
#' @example inst/examples/scoutingAnts.R
#' @references Koch, Alexandra, and Tomer J. Czaczkes. "No specialist pheromone-ignoring ants in Lasius niger." Ecological Entomology 46 (2020): 677-680.
#' 
#' @author Florian Hartig
"scoutingAnts"


#### Snails ####
#' Snails data
#' 
#' @description 
#' Temporal and spatial distribution of (infected) 4 freshwater snail species from 92 sites
#' 
#' @details 
#' 
#' The dataset comes from a study from Rabone et al., 2019 and includes information about the distribution of four snail species (healthy and infected) in the Niger River Valley. Freshwater snails are known to be intermediate hosts of schistosomiasis (a parasit).
#' 
#' The objective of Rabone et al., 2019 was to model the total abundance of the snail species as well as the proporation of the infected individuals. The hypothesis is that the total abundance and the infection depends on environmental and on seasonal factors. Data were collected at 92 (20 localities) sites over a 6-year period (2011-2016).
#' 
#' **Task:**
#' Rabone et al., 2019 found differences for the species. Start with one species (total abundance + infection rate) and if you have time, go for other species.
#' 
#' **Tip:**
#' 
#' | Effects        | Variables                                                                              |
#' |------------------------|-----------------------------------------------|
#' | Response       | Bulinus_tot, BP_tot, BF_tot, BT_tot total                                              |
#' | Fixed effects  | Temp_Water, pH, water_speed_ms, water_depth, Cond, wmo_prec, locality, site_type, year |
#' | Random effects | Locality, site_irn, coll_date                                                          |
#' | offset         | duration  
#' 
#' **Variables:**
#' 
#' \itemize{
#'  \item locality    nearby village. 20 in total
#'  \item site_irn    site code unique in dataset
#'  \item visit_no    number allocated to each monthly survey- e.g. 1 for first field mission in late july 2011- to 48 for last one in jan 2016
#'  \item coll_date    collection date
#'  \item month    month
#'  \item Bulinus_tot    total of all Bulinus spp. collected
#'  \item Bulinus_pos_tot    total of all Bulinus spp. positive for infection collected
#'  \item BP_tot    Biomphalaria pfeifferi total count/collected
#'  \item BP_pos_tot    Biomphalaria pfeifferi positive for infection total no collected
#'  \item BF_tot    total of Bulinus forskalii collected
#'  \item BF_pos_tot    total of Bulinus forskalii positive for infection collected
#'  \item BF_prev    B. forskalii total positive/total collected *100 to give prevalence
#'  \item BT_tot    total of Bulinus truncatus collected
#'  \item BT_pos_tot    total of Bulinus truncatus positive for infection collected
#'  \item BT_prev    B. truncatus total positive/total collected *100 to give prevalence
#'  \item bp_pres    Biomphalaria pfeifferi present- n/y
#'  \item bt_pres    Bulinus truncatus present- y/n
#'  \item site_type    can.2= secondary irrigation canal, canal.3= tertiary irrigation canal, rice.p = rice paddy
#'  \item L_tot    total of Lymnaea natalensis collected
#'  \item Temp_Air    air temperature
#'  \item Temp_Water    water temperature
#'  \item water_speed_ms    water speed in m per sec
#'  \item water_depth    water depth in cm
#'  \item pH    pH reading from flow metre
#'  \item Cond    conductivity in ppm
#'  \item PPM    ppm water param data value
#'  \item Latitude.verb    latitude verbatim
#'  \item Longitude.verb    longitude verbatim
#'  \item Stagnante    no flow y/n
#'  \item wmo_min_temp    weather station day minimum air temp
#'  \item wmo_max_temp    weather station day max air temp
#'  \item wmo_av_temp    weather station day average air temp
#'  \item wmo_prec    weather station precipication in cm
#'  \item seas_wmo    season value adjusted to make may as part of wet season as often rain in this month (i.e. season acc to month of year AND WMO data).  wet season MAY- oct, dry nov- april)
#'  \item duration    cleaned duration data- combining durat_verb and duration.amina
#'  \item Heure    time of survey
#'  \item water_level.v    water level as recorded in original dataset (low, med, high, in flood)
#'  \item water_level3    water level edited to 3 levels only (some of in flood records the water depth is recorded as low)
#'  \item tz tz
#'  \item year year
#'  \item Latitude latitude
#'  \item Longitude longitude
#' }
#' 
#' 
#' @note
#' 
#' * start with lme4 (model checks are easier because of conditional simulations and the plotting option for residuals \~ random effects to identify random slopes (`plot(model, fitted(.)~sTemp_Water | coll_date))`)
#' * check for underdispersion
#' * check for temporal or spatial trends/autocorrelation 
#' * scale your variables
#' 
#' @references 
#'  Rabone, M., Wiethase, J. H., Allan, F., Gouvras, A. N., Pennance, T., Hamidou, A. A., ... & Rollinson, D. (2019). Freshwater snails of biomedical importance in the Niger River Valley: evidence of temporal and spatial patterns in abundance, distribution and infection with Schistosoma spp. Parasites & vectors, 12(1), 1-20.
#' 
#' @example inst/examples/snails.R
#' 
#' @author Maximilian Pichler
"snails"

