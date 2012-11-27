\name{get.psmsl.url}
\alias{get.psmsl.url}
\title{
Get the url where the psmsl database is located.
}
\description{
This file looks up the url of the PSMSL dataset.
}
\usage{
get.psmsl.url(type="monthly")

}
\arguments{
  \item{type}{the type of dataset (monthly, metric or year)}
}
%- maybe also 'usage' for other objects documented here.
\details{
PSMSL is the global data bank for long term sea level change information from tide gauges and bottom pressure recorders. 
The different types of datasets are described on the psmsl website. Be careful with the metric dataset.
}
\references{
%% ~put references to the literature/web site here ~
\url{http://www.psmsl.org/}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{read.psmsl}}
}
\examples{
url <- get.psmsl.url('monthly')
}
\keyword{ ~datasets }
