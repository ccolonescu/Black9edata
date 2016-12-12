\name{Financial}
\alias{Financial}
\docType{data}
\title{
Financial Database
}
\description{
Observations on eight variables for 100 companies.
}
\usage{data("Financial")}
\format{
  A data frame with 100 observations on the following 9 variables.
  \describe{
    \item{\code{company}}{a character vector}
    \item{\code{type}}{Type of industry: 1=aparel, 2=chemical, 3=electric power, 4= grocery, 5=health care products, 6=insurance, 7=petroleum}
    \item{\code{rev}}{Total revenues, in $ millions}
    \item{\code{assets}}{Total assets, in $ millions}
    \item{\code{roe}}{Return on equity (\%)}
    \item{\code{eps}}{Earnings per share ($)}
    \item{\code{yield}}{Average yield(\%)}
    \item{\code{dps}}{Dividends per share ($)}
    \item{\code{ppe}}{Price per earnings ratio}
  }
}

\examples{
data(Financial)
## maybe str(Financial) ; plot(Financial) ...
}
\keyword{datasets}
