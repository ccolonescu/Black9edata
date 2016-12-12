\name{Manufacturer}
\alias{Manufacturer}
\docType{data}
\title{
Manufacturing Database
}
\description{
This database contains variables taken from 20 industries and 140 subindustries in the United States.
}
\usage{data("Manufacturer")}
\format{
  A data frame with 140 observations on the following 9 variables.
  \describe{
    \item{\code{SIC}}{a numeric vector}
    \item{\code{emp}}{Number of employees, in 1000s}
    \item{\code{wkrs}}{Number of production workers, in 1000s}
    \item{\code{vadded}}{Value added by manufacture, in $ millions}
    \item{\code{costmat}}{Cost of materials, in $ millions}
    \item{\code{shipmnts}}{Value of industry shipments, recoded in 4 groups: 1 = $0 to 4.9 billion, 2 = $5 billion to $13.9 billion, 3 = $14 billion to $28.9 billion, and 4 = $29 billion or more.}
    \item{\code{newcap}}{New capital expenditures, in $ millions}
    \item{\code{inv}}{End-of-year inventories, in $ millions}
    \item{\code{grp}}{Industry Group, from 1 to 20. Some of the groups are food products, testile mill products, furniture, chemicals, rubber products, primary metals, industrial machinery, and transport equipment.}
  }
}

\examples{
data(Manufacturer)
## maybe str(Manufacturer) ; plot(Manufacturer) ...
}
\keyword{datasets}
