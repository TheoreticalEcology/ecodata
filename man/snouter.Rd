% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{snouter}
\alias{snouter}
\title{Snouter}
\format{
An object of class \code{data.frame} with 1108 rows and 34 columns.
}
\usage{
snouter
}
\description{
Snouter data from Dormann et al., Methods to account for spatial autocorrelation in the analysis of species distributional data: A review Ecography, 2007, 30, 609-628
}
\details{
From Wikipedia:

Rhinogradentia is a fictitious order of mammal invented by German zoologist Gerolf Steiner. Members of the order, known as rhinogrades or snouters, are characterized by a nose-like feature called a nasorium, which evolved to fulfill a wide variety of functions in different species. Steiner also created a fictional persona, naturalist Harald Stuempke, who is credited as author of the 1957 book Bau und Leben der Rhinogradentia (translated into English in 1967 as The Snouters: Form and Life of the Rhinogrades). According to Steiner, it is the only remaining record of the animals, which were wiped out, along with all the world's Rhinogradentia researchers, when the small Pacific archipelago they inhabited sank into the ocean due to nearby atomic bomb testing.

Successfully mimicking a genuine scientific work, Rhinogradentia has appeared in several publications without any note of its fictitious nature, sometimes in connection with April Fools' Day.

From the paper: We have a data frame with several snouter response variables (you can thing of those as different studies), of different types (continous, count, binary data). Explanatory variables are "X", "Y", "rain", "djungle"!
}
\examples{
# plotting the data
image(xtabs(rain~X+Y, data=snouter))
image(xtabs(djungle~X+Y, data=snouter))
image(xtabs(snouter1.1~X+Y, data=snouter))

# fit and residual plot in space
ols1 <- lm(snouter1.1 ~ rain + djungle, data=snouter)
summary(ols1)
image(xtabs(residuals(ols1)~X+Y, data=snouter))
}
\author{
Florian Hartig
}
\keyword{datasets}
