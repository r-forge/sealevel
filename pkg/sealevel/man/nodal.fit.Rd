\name{nodal.fit}
\alias{nodal.fit}
\title{
Fit a 18.613 year nodal cycle.
}
\description{
Does a linear model of trend and a nodal fit on sea level rise records.
}
\usage{
nodal.fit(zoo,degree=1)
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
}
\examples{
 data(dutch)	
 zoo <- dutch[[1]]$zoo 
 nodal.fit(zoo)
}
