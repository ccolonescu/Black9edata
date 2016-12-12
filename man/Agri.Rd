\name{Agri}
\alias{Agri}
\docType{data}
\title{
Agribusiness Time-Series Database
}
\description{
Monthly weight (in 1000 lbs.) of cold storage holdings for six different vegetables and for total frozen vegetables over 14 years.
}
\usage{data("Agri")}
\format{
  A data frame with 168 observations on the following 8 variables.
  \describe{
    \item{\code{Month}}{a numeric vector}
    \item{\code{GreenBns}}{a numeric vector}
    \item{\code{Broccoli}}{a numeric vector}
    \item{\code{Carrots}}{a numeric vector}
    \item{\code{Corn}}{a numeric vector}
    \item{\code{Onions}}{a numeric vector}
    \item{\code{GrnPeas}}{a numeric vector}
    \item{\code{TotVegs}}{a numeric vector}
  }
}

\examples{
data(Agri)
## maybe str(Agri) ; plot(Agri) ...
}
\keyword{datasets}
