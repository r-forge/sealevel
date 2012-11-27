get.psmsl.url <- function(type="monthly") {
  if (type=="monthly"){
    url <- "http://www.psmsl.org/data/obtaining/rlr.monthly.data/rlr_monthly.zip"
  }
  else if (type=="metric"){
    url <- "http://www.psmsl.org/data/obtaining/met.monthly.data/met_monthly.zip"
  }
  else if (type=="annual"){
    url <- "http://www.psmsl.org/data/obtaining/rlr.annual.data/rlr_annual.zip"
  }
  return(url)
}
