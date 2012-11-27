\name{get.colorado.url}
\alias{get.colorado.url}
\title{
Get the url where the psmsl database is located.
}
\description{
This file looks up the url of the Colorado dataset.
}
\usage{
get.colorado.url(location="Global")

}
\arguments{
  \item{location}{Location of the time series.}
}
%- maybe also 'usage' for other objects documented here.
\details{
The Colorado dataset consists of the TOPEX and Jason measurement series. These satellite radar altimeters have allowed estimates of global mean sea level. 
These measurements are continuously calibrated against a network of tide gauges. When seasonal and other variations are subtracted, they allow estimation of the global mean sea level rate. 
}
\references{
%% ~put references to the literature/web site here ~
\url{http://sealevel.colorado.edu}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{get.psmsl.url}}
}
\examples{
url <- get.colorado.url() # defaults to Global dataset
}
\keyword{ ~datasets }
