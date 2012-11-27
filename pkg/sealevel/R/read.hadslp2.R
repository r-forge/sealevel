require("ncdf4")
read.hadslp2 <- function(filename) {
  con <- nc_open(filename)
  print(con)
  slp <- ncvar_get(con, "slp")
  lat <- ncvar_get(con, "lat")
  lon <- ncvar_get(con, "lon")
  time <- ncvar_get(con, "time")
  nc_close(con)
  dimnames(slp) <- list(lon, lat, time)
}

