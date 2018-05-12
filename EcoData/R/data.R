#' Feeding of bird nestlings 
#'
#' A dataset containing observationso items fed to bird nestlings,
#' depending on their attractiveness.
#' 
#' @author Florian Hartig 
#'
#' @format A 'data.frame': 25 obs. of  2 variables
#' \describe{
#'   \item{feeding}{items fed to a wird}
#'   \item{attractiveness}{estimated attractiveness of a bird}
#'   ...
#' }
#' @source \url{http://biometry.github.io/APES/}
"birdfeeding"


#' Birdabundance
#'
#' Abundance of birds in forest fragments in Australia
#' 
#' @author Florian Hartig 
#'
#' @format A 'data.frame':	56 obs. of  8 variables:
#' \describe{
#'   \item{SITE}{site ID}
#'   \item{ABUND}{Bird abundance}
#'   \item{AREA}{Area}
#'   \item{DIST}{Distance to the next forest fragment}
#'   \item{LDIST}{Distance to the next large forest fragment}
#'   \item{YR.ISOL}{Years since the site was isolated / fragmented}
#'   \item{GRAZE}{Grazing intensity in the surrounding}
#'   \item{ALT}{Altitude}
#' }
#' @source \url{http://biometry.github.io/APES/}
"birdabundance"

#' Titanic data
#'
#' Survival of passengers on the MS titanic
#'
#' @format A 'data.frame':	1310 obs. of  14 variables:
#' \describe{
#'   \item{pclass}{Passenger class (int)}
#'   \item{survived}{Did the passenger survive (int, 1 = survived)}
#'   \item{name}{Pasenger name (character)}
#'   \item{sex}{Passenger sex (factor)}
#'   \item{age}{Passenger age (factor)}
#'   \item{...}{further variables} 
#' }
#' @author Florian Hartig 
#' @source \url{http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets}
"titanic"




#' Regrowth
#'
#' Plant regrowth observations
#'
#' @format A 'data.frame':	40 obs. of  3 variables:
#' \describe{
#'   \item{Root}{Root biomass (num)}
#'   \item{Fruit}{Fruit biomass (num)}
#'   \item{Grazing}{Grazed or not (factor)}
#' }
#' @author Florian Hartig 
"regrowth"

#' Solomon Islands - Island Biogeography
#'
#' A classical dataset of island biogeography - number of species found on the Solomon islands, as a function of distance to mainland and island area
#'
#' @format A 'data.frame':	40 obs. of  3 variables:
#' \describe{
#'   \item{Island}{Island name (chr)}
#'   \item{Species}{Species richness on the respective island (num)}
#'   \item{Area}{Island area (num)}
#'   \item{Distance}{Distance to mainland (num)}
#' }
#' @author Florian Hartig 
"solomonislands"

#' Students
#'
#' The data were obtained in a survey of students math and portuguese language courses in secondary school. It contains a lot of interesting social, gender and study information about students. You can use it for some EDA or try to predict students final grade.
#'   
#' @details 
#'  school - student's school (binary: 'GP' - Gabriel Pereira or 'MS' - Mousinho da Silveira)
#'   
#' sex - student's sex (binary: 'F' - female or 'M' - male)
#' 
#' age - student's age (numeric: from 15 to 22)
#' 
#' address - student's home address type (binary: 'U' - urban or 'R' - rural)
#' 
#' famsize - family size (binary: 'LE3' - less or equal to 3 or 'GT3' - greater than 3)
#' 
#' Pstatus - parent's cohabitation status (binary: 'T' - living together or 'A' - apart)
#' 
#' Medu - mother's education (numeric: 0 - none, 1 - primary education (4th grade), 2 – 5th to 9th grade, 3 – secondary education or 4 – higher education)
#' 
#' Fedu - father's education (numeric: 0 - none, 1 - primary education (4th grade), 2 – 5th to 9th grade, 3 – secondary education or 4 – higher education)
#' 
#' Mjob - mother's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other')
#' 
#' Fjob - father's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other')
#' 
#' reason - reason to choose this school (nominal: close to 'home', school 'reputation', 'course' preference or 'other')
#' 
#' guardian - student's guardian (nominal: 'mother', 'father' or 'other')
#' 
#' traveltime - home to school travel time (numeric: 1 - <15 min., 2 - 15 to 30 min., 3 - 30 min. to 1 hour, or 4 - >1 hour)
#' 
#' studytime - weekly study time (numeric: 1 - <2 hours, 2 - 2 to 5 hours, 3 - 5 to 10 hours, or 4 - >10 hours)
#' 
#' failures - number of past class failures (numeric: n if 1<=n<3, else 4)
#' 
#' schoolsup - extra educational support (binary: yes or no)
#' 
#' famsup - family educational support (binary: yes or no)
#' 
#' paid - extra paid classes within the course subject (Math or Portuguese) (binary: yes or no)
#' 
#' activities - extra-curricular activities (binary: yes or no)
#' 
#' nursery - attended nursery school (binary: yes or no)
#' 
#' higher - wants to take higher education (binary: yes or no)
#' 
#' internet - Internet access at home (binary: yes or no)
#' 
#' romantic - with a romantic relationship (binary: yes or no
#' )
#' famrel - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
#' 
#' freetime - free time after school (numeric: from 1 - very low to 5 - very high)
#' 
#' goout - going out with friends (numeric: from 1 - very low to 5 - very high)
#' 
#' Dalc - workday alcohol consumption (numeric: from 1 - very low to 5 - very high)
#' 
#' Walc - weekend alcohol consumption (numeric: from 1 - very low to 5 - very high)
#' 
#' health - current health status (numeric: from 1 - very bad to 5 - very good)
#' 
#' absences - number of school absences (numeric: from 0 to 93)
#' 
#' These grades are related with the course subject, Math or Portuguese:
#'   
#'   G1 - first period grade (numeric: from 0 to 20)
#' G2 - second period grade (numeric: from 0 to 20)
#' G3 - final grade (numeric: from 0 to 20, output target)
#' 
#' Additional note: there are several (382) students that belong to both datasets . These students can be identified by searching for identical attributes that characterize each student, as shown in the annexed R file.
#' Source Information
#' 
#' P. Cortez and A. Silva. Using Data Mining to Predict Secondary School Student Performance. In A. Brito and J. Teixeira Eds., Proceedings of 5th FUture BUsiness TEChnology Conference (FUBUTEC 2008) pp. 5-12, Porto, Portugal, April, 2008, EUROSIS, ISBN 978-9077381-39-7.
#' 
#' Fabio Pagnotta, Hossain Mohammad Amran. Email:fabio.pagnotta@studenti.unicam.it, mohammadamra.hossain '@' studenti.unicam.it University Of Camerino
#' 
#' https://archive.ics.uci.edu/ml/datasets/STUDENT+ALCOHOL+CONSUMPTION
#' Released Under CC0: Public Domain License
#'
#'
#' @author Florian Hartig 
#' @source \url{https://www.kaggle.com/uciml/student-alcohol-consumption}
"students"


#' Volcano island
#' 
#' Ecological observatins on a lonely volcano island. 
#' 
#' @details 
#' 
#' We are looking at the Maunga Whau (Mt Eden), one of about 50 volcanos in the Auckland volcanic field. 
#' 
#' A crazy ecologist has created 100 permanent beetle observation plots arcross the volcano (random), and monitored them for 10 years, so you have one observation each year. Below a visualization of the terrain
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
#' @format A 'data.frame':	1000 obs. of  21 variables:
#' @author Florian Hartig 
#' @example inst/examples/volcanoislandHelp.R
#' 
"volcanoisland"