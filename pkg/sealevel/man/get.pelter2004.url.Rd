\name{get.pelter2004.url}
\alias{get.pelter2004.url}
\title{
Get the url where the pelter2004 database is located.
}
\description{
This file looks up the url of the PELTER2004 dataset.
}
\usage{
get.pelter2004.url(type="sea")

}
\arguments{
  \item{type}{the type of dataset (sea, rad, geoid, hor)}
}
%- maybe also 'usage' for other objects documented here.
\details{
The Pelter2004 dataset provides the estimates from the glacial isostatic adjustment model, denoted ICE-5G (VM2).
}
\references{
%% ~put references to the literature/web site here ~
\url{http://www.atmosp.physics.utoronto.ca/~peltier/data.php}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{read.pelter2004}}
}
\examples{
url <- get.pelter2004.url('sea')
}
\keyword{ ~datasets }
