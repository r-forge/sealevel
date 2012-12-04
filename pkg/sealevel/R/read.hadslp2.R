require("ncdf")
read.hadslp2 <- function(filename) {
  con <- open.ncdf(filename)
  slp <- get.var.ncdf(con, "slp")
  lat <- get.var.ncdf(con, "lat")
  lon <- get.var.ncdf(con, "lon")
  time <- get.var.ncdf(con, "time")
  close.ncdf(con)
  dimnames(slp) <- list(lon, lat, time)
  return(slp)
}

