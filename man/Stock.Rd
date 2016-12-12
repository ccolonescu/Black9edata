\name{Stock}
\alias{Stock}
\docType{data}
\title{
U.S. and International Stock Market Database
}
\description{
This database contains seven variables -- three from the U.S. stock market and four from international stock markets -- with data representing monthly averages of each over a period of five years resulting in 60 data points per variable.
}
\usage{data("Stock")}
\format{
  A data frame with 63 observations on the following 8 variables.
  \describe{
    \item{\code{month}}{a POSIXct}
    \item{\code{DJIA}}{Dow Jones Industrial Average, U.S.}
    \item{\code{NASDAQ}}{NASDAQ, U.S.}
    \item{\code{SP500}}{Standard & Poor's 500, U.S.}
    \item{\code{NIKKEI225}}{Japan}
    \item{\code{HANGSENG}}{Hong Kong}
    \item{\code{FTSE100}}{United Kingdom}
    \item{\code{IPC}}{Mexico}
  }
}
\examples{
data(Stock)
## maybe str(Stock) ; plot(Stock) ...
}
\keyword{datasets}
