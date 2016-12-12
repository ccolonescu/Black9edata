\name{Food}
\alias{Food}
\docType{data}
\title{
Consumer Food Database
}
\description{
The consumer food database contains 200 entries for five variables.
}
\usage{data("Food")}
\format{
  A data frame with 200 observations on the following 5 variables.
  \describe{
    \item{\code{Spending}}{Annual food spending per household ($)}
    \item{\code{Income}}{Annual Household income ($)}
    \item{\code{Debt}}{Non-mortgage household debt ($)}
    \item{\code{Region}}{1=Northeast, 2=Midwest, 3=South, 4=West
    }
    \item{\code{Location}}{1=Metropolitan area, 2=Outside a metropolitan area}
  }
}
\details{
The data in this database were randomly derived and developed based on actual national norms.
}
\examples{
data(Food)
## maybe str(Food) ; plot(Food) ...
}
\keyword{datasets}
