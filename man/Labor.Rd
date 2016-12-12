\name{Labor}
\alias{Labor}
\docType{data}
\title{
International Labor Database
}
\description{
This dataset contains the civilian unemployment rates in percent from seven countries presented yearly over a 40-year period.
}
\usage{data("Labor")}
\format{
  A data frame with 40 observations on the following 8 variables.
  \describe{
    \item{\code{Year}}{a numeric vector}
    \item{\code{U.S.}}{a numeric vector}
    \item{\code{Canada}}{a numeric vector}
    \item{\code{Australia}}{a numeric vector}
    \item{\code{Japan}}{a numeric vector}
    \item{\code{France}}{a numeric vector}
    \item{\code{Germany}}{a numeric vector}
    \item{\code{Italy}}{a numeric vector}
  }
}

\source{
Bureau of Labor Statistics of the U.S. Department of Labor
}

\examples{
data(Labor)
## maybe str(Labor) ; plot(Labor) ...
}
\keyword{datasets}
