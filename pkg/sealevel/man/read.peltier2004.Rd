\name{read.peltier2004}
\alias{read.peltier2004}
\title{
 Read Peltier2004 data
}
\description{
Read the GIA dataset from the Peltier2004.
}
\usage{
read.peltier2004(filename)
}

\arguments{
  \item{filename}{a nc file or opendap url with a link to the Peltier2004 dataset)}
}
\value{
\item{grd}{A gridded version of the data}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{get.peltier2004.url}}
}
\examples{
  url <- get.peltier2004.url()
  filename <- basename(url)
\dontrun{
  download.file(url, filename)
  read.peltier2004(filename=filename)
}
}
