\name{read.dutch}
\alias{read.dutch}
\alias{station}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Read PSMSL sealevel dataset.
}
\description{
 This function reads a dataset from PSMSL and returns a list of records with data from each station.
}
\usage{
read.dutch(file)
}
%- maybe also 'usage' for other objects documented here.
\details{
 The returned \link{station} contains the raw elements from the file and a zoo time series
}
\arguments{
	\item{file}{the filename or connection object of the Dutch sea level.}
}
\value{
\item{station}{A list with sea level data (name, zoo)}
}
\references{
\url{http://www.helpdeskwater.nl}
}
\author{
Fedor Baart
}
\seealso{
\code{\link{read.psmsl}}
\code{\link{read.colorado}}
%\code{\link{read.csiro}}

}
\examples{
#read.dutch('file-z.txt')
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~datasets }
