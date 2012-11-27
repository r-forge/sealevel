\name{read.colorado}
\alias{read.colorado}
\alias{series}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read Colorado sealevel dataset.
}
\description{
 This function reads a dataset from Colorado and returns a list of records with data from each station.
}
\usage{
read.colorado(file)
}
%- maybe also 'usage' for other objects documented here.
\details{
 The returned \link{series} is a timeseries of sea level. These contain the raw elements from the file. See the documentation in the references for details about the elements. 
}
\arguments{
	\item{file}{the filename or connection of the colorado file}
}
\value{
\item{series}{A time series of sea level data}
}
\references{
\url{http://sealevel.colorado.edu/}
}
\author{
Fedor Baart
}
\seealso{
\code{\link{read.psmsl}}
}
\examples{
# look up the url
coloradourl <- get.colorado.url()
# read it
series <- read.colorado(url(coloradourl))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~datasets }
