\name{Energy}
\alias{Energy}
\docType{data}
\title{
Energy Database
}
\description{
Data on five energy variables over 26 years.
}
\usage{data("Energy")}
\format{
  A data frame with 26 observations on the following 6 variables.
  \describe{
    \item{\code{Year}}{a numeric vector}
    \item{\code{CrOilPrd}}{World crude oil production, million barrels per day}
    \item{\code{USEnCons}}{US energy consumption, in quadrillion BTUs per year}
    \item{\code{USNucGen}}{US nuclear energy generation, in billion kilowatt-hours}
    \item{\code{USCoalPr}}{US coal production, in million short tons}
    \item{\code{USDryGas}}{US natural dry gas production, in million cubic feet}
  }
}

\examples{
data(Energy)
## maybe str(Energy) ; plot(Energy) ...
}
\keyword{datasets}
