\name{Hospital}
\alias{Hospital}
\docType{data}
\title{
Hospital Database
}
\description{
This database contains observations for 11 variables on US hospitals.
}
\usage{data("Hospital")}
\format{
  A data frame with 200 observations on the following 12 variables.
  \describe{
    \item{\code{hosp}}{a numeric vector}
    \item{\code{region}}{a numeric vector}
    \item{\code{ctrl}}{a numeric vector}
    \item{\code{service}}{a numeric vector}
    \item{\code{beds}}{a numeric vector}
    \item{\code{admiss}}{a numeric vector}
    \item{\code{census}}{a numeric vector}
    \item{\code{visits}}{a numeric vector}
    \item{\code{births}}{a numeric vector}
    \item{\code{totexp}}{a numeric vector}
    \item{\code{payroll}}{a numeric vector}
    \item{\code{personell}}{a numeric vector}
  }
}
\examples{
data(Hospital)
## maybe str(Hospital) ; plot(Hospital) ...
}
\keyword{datasets}
