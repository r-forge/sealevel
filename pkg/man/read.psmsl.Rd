\name{read.psmsl}
\alias{read.psmsl}
\alias{stations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read PSMSL sealevel dataset.
}
\description{
 This function reads a dataset from PSMSL and returns a list of records with data from each station.
}
\usage{
read.psmsl(description="rlr_monthly.zip")
}
%- maybe also 'usage' for other objects documented here.
\details{
 The returned \link{stations} is a list of stations. These contain the raw elements from the file. See the documentation in the references for details about the elements. 
}
\arguments{
	\item{description}{the filename of the psmsl file, should be named something like code_period.zip}	
}
\value{
\item{stations}{A list of stations with sea level data}
}
\references{
\url{http://www.psmsl.org/data/obtaining/psmsl.hel}
}
\author{
Fedor Baart
}
\section{Warning}{
The station data is return as a list of lists. This will change in the future.
}
\seealso{
\code{\link{get.psmsl.url}}
}
\examples{
# look up the url
psmslurl <- get.psmsl.url(type="monthly")
# store it localy (can't read zip files from the web)
path <- basename(psmslurl)
# download it
download.file(psmslurl, path)
# read it
stations <- read.psmsl(path)
# and clean up
unlink(path)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~datasets }
