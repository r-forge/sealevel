require("zoo")
as.year <- function(zoo) {
  # convert to posixct
  t <- as.POSIXct(time(zoo))
  days <- as.numeric(difftime(t, as.POSIXct("1970-01-01"), units="days"))
  years <- days/365.25
  return(years)
}
