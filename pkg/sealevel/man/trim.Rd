\name{trim}
\alias{trim}
\title{
Strip whitespace from a string.
}
\description{
This function replaces all whitespace (\\ s) from a string and returns the stripped version. 
}
\usage{
trim(string)
}

\arguments{
  \item{string}{a string that will be stripped}
}
\value{
\item{string }{The string stripped from whitespace}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{gsub}}
}
\examples{
 s <- "	 in between spaces and tabs 	"
 trim(s)
}
\keyword{ ~manip }
\keyword{ ~character }
