\name{polynomial.fit}
\alias{polynomial.fit}
\title{
Fit a ordinary regression line through a zoo time series.
}
\description{
Does a linear model of trend and optional acceleration.
}
\usage{
polynomial.fit(zoo,degree=1)
}

\arguments{
  \item{zoo}{a zoo timeseries used for analysis}
  \item{degree}{The degree of the fitted polynomial (degree 1=line, degree 2=parabola). Degree 1 is used for including sea level rise. Degree 2 is for including both rise and deceleration or acceleration.}
}
\value{
\item{lm}{An object of class \code{\link{lm}} is returned.}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{lm}}
\code{\link{zoo}}
\code{\link{nodal.fit}}
}
\examples{
 data(dutch)	
 zoo <- dutch[[1]]$zoo 
 polynomial.fit(zoo)
}
