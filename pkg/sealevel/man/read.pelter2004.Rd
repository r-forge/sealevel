\name{read.pelter2004}
\alias{read.pelter2004}
\title{
 Read Pelter2004 data
}
\description{
Read the GIA dataset from the Pelter2004.
}
\usage{
read.pelter2004(filename)
}

\arguments{
  \item{filename}{a nc file or opendap url with a link to the Pelter2004 dataset)}
}
\value{
\item{grd}{A gridded version of the data}
}
\author{
Fedor Baart
}

\seealso{
\code{\link{get.pelter2004.url}}
}
\examples{
  url <- get.pelter2004.url()
  filename <- basename(url)
\dontrun{
  download.file(url, filename)
  read.pelter2004(filename=filename)
}
}
