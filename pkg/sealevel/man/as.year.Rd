\name{as.year}
\alias{as.year}
\title{
Convert zoo time into year since 1970
}
\description{
Convert the times of a zoo timeseries to years (365.25 days) since 1970. 
}
\usage{
as.year(zoo)
}

\arguments{
  \item{zoo}{a zoo timeseries}
}
\value{
\item{years}{The number of years (365.25 days) since 1970}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{difftime}}
}
\examples{
 require("zoo")
 series <- zoo(x=c(1,2), yearmon(c(1990,1991)))
 as.year(series)
}

