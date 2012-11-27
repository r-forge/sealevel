\name{read.hadslp2}
\alias{read.hadslp2}
\title{
Strip whitespace from a string.
}
\description{
Read the surface level pressure dataset from the metoffice. This is used for the inverse barometer correction.
}
\usage{
read.hadslp2(filename)
}

\arguments{
  \item{filename}{a file or opendap url with a link to the hadslp2 dataset (as processed by NOAA)}
}
\value{
\item{slp}{A three dimensional array of sea level pressure per time, lat and lon}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{get.hadslp2.url}}
}
\examples{
  url <- get.hadslp2.url()
  filename <- basename(url)
\dontrun{
  download.file(url, filename)
  read.hadslp2(filename=filename)
}
}
