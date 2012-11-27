require("ncdf4")
require("sp")
read.peltier2004 <- function(filename) {
  con <- nc_open(filename)

  lat <- ncvar_get(con, "Lat")
  lon <- ncvar_get(con, "Lon")
  # combine lon and lat into a gridded dataframe
  df <- data.frame(lon=rep(lon,times=length(lat)), lat=rep(lat,each=length(lon)))
  # add all the variables
  for (name in names(con$var)) {
    df[,name] <- c(ncvar_get(con, name))
  }
  # convert to a spatial object
  coordinates(df) <- ~lon+lat
  # and a gridded object (so you can use image)
  gridded(df) <- TRUE
  nc_close(con)
  return(df)
}

