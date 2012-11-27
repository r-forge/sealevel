\name{eof}
\alias{eof}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
End of file
}
\description{
Check for the end of file.
}
\usage{
eof(con)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{con}{A connection}
}
\details{
This function tries to read a file, if there's more data then it rewinds and returns true. If the file is not seekable the end of file check is not performed, because we wouldn't be able to rewind.
}
\value{
A \link{logical}, TRUE if end of file is reached.
}
\references{
I probably copied this code from somewhere but I can't find the source anymore.
}
\author{
Fedor Baart
}
\note{
 Checking for end of files explicitly is rarely necessary. 
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{connections}}, \code{\link{readLines}}
}
\examples{
f <- file()
eof(f)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~IO }
\keyword{ ~file }
\keyword{ ~connection }

