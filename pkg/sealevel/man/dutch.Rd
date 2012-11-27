\name{dutch}
\alias{dutch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Dataset of Dutch sea levels
}
\description{
 Dataset consisting of records of annual Dutch sea level records
}
\usage{
data(dutch)
}
%- maybe also 'usage' for other objects documented here.
\details{
 The returned \link{station} contains the raw elements from the file and a zoo time series
}
\references{
\url{http://www.helpdeskwater.nl}
}
\author{
Fedor Baart
}
\seealso{
\code{\link{read.dutch}}

}
\examples{
library(zoo)
data(dutch)
plot(dutch[[1]]$zoo)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~datasets }
