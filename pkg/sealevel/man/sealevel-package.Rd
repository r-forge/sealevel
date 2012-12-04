\name{sealevel-package}
\alias{sealevel-package}
\alias{sealevel}
\docType{package}
\title{
Utility functions for reading and analyzing trends in common used sealevel archives.
}
\description{
This package provides utility functions to read data from sea level data archives such as PSMSL, CSIRO, Colorado.edu and Soest. 
}
\details{
\tabular{ll}{
Package: \tab sealevel\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-06-23\cr
License: \tab GPL-3\cr
LazyLoad: \tab yes\cr
}
\code{\link{read.psmsl}},\code{\link{get.psmsl.url}}
}
\author{
Fedor Baart
Maintainer: Fedor Baart <f.baart@tudelft.nl>
}
\keyword{ package }
\keyword{ datasets }
\seealso{
\code{\link[oce:read.sealevel]{oce}}
}
\examples{
# look up the url
psmslurl <- get.psmsl.url(type="annual")
# store it localy (can't read zip files from the web)
path <- basename(psmslurl)
# download it
download.file(psmslurl, path)
\dontrun{
# read it, takes a while
stations <- read.psmsl(description=path)
}
# and clean up
unlink(path)
}
