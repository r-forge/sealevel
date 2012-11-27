\name{get.hadslp2.url}
\alias{get.hadslp2.url}
\title{
Lookup the url for the hadslp2 dataset
}
\description{
The hadslp2 dataset consists of reconstructed surface level pressures. These can be used to apply an inverse barometer correction. The url refers to the NOAA website because their netCDF file contains proper metadata and is easier to process. 
}
\usage{
get.hadslp2.url()
}

\value{
\item{url}{The url of the dataset. }
}
\author{
Fedor Baart
}

\seealso{
\code{\link{read.hadslp2}}
\code{\link{ncdf4}}
}
\examples{
 url <- get.hadslp2.url()
}
