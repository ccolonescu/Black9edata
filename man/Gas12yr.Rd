\name{Gas12yr}
\alias{Gas12yr}
\docType{data}
\title{
12-Year Gasoline Database
}
\description{
The database contains monthly data for four variables: US gasoline prices, OPEC spot price, US finished motor gasoline production, and US natural gas wellhead price. There are 137 data entries for each variable.
}
\usage{data("Gas12yr")}
\format{
  A data frame with 137 observations on the following variables.
  \describe{
    \item{\code{Month}}{Froom 1997-01 to 2008-05}
    \item{\code{USPrice}}{US gasoline prices, in cents}
    \item{\code{OPECPrice}}{OPEC spot price, in dollars per barrel}
    \item{\code{USProd}}{US finished motor gasoline production, in 1000 barrels}
    \item{\code{USngPrice}}{US US natural gas wellhead price, in dollars per 1000 cubic feet}
  }
}
\examples{
data(Gas12yr)
## maybe str(Gas12yr) ; plot(Gas12yr) ...
}
\keyword{gasoline}
