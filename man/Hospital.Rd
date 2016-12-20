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
    \item{\code{hosp}}{hospital number in the datafile}
    \item{\code{region}}{1=South, 2=Northeast, 3=Midwest, 4=Southwest,
    5=Rocky Mountain, 6=California, 7=Northwest}
    \item{\code{ctrl}}{Type of ownership: 1=government, nonfederal,
    2=nongovernment, not-for-profit, 3=for-profit, 4=federal government}
    \item{\code{service}}{Type of hospital: 1=general medical, 2=psychiatric}
    \item{\code{beds}}{Number of beds}
    \item{\code{admiss}}{Number of admissions}
    \item{\code{census}}{a numeric vector}
    \item{\code{visits}}{Number of outpatients}
    \item{\code{births}}{Number of births}
    \item{\code{totexp}}{Total expenditures}
    \item{\code{payroll}}{Payroll expenditures}
    \item{\code{personell}}{a numeric vector}
  }
}
\examples{
data(Hospital)
## maybe str(Hospital) ; plot(Hospital) ...
}
\keyword{datasets}
