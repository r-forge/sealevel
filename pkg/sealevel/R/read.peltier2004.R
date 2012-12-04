require("ncdf")
require("sp")
read.peltier2004 <- function(filename) {
  ext <- tail(unlist(strsplit(filename, ".", fixed = TRUE)),n=1)
  if (ext =="nc") {
      con <- open.ncdf(filename)

      lat <- get.var.ncdf(con, "Lat")
      lon <- get.var.ncdf(con, "Lon")
      # combine lon and lat into a gridded dataframe
      df <- data.frame(lon=rep(lon,times=length(lat)), lat=rep(lat,each=length(lon)))
      # add all the variables
      for (name in names(con$var)) {
        df[,name] <- c(get.var.ncdf(con, name))
      }
      # convert to a spatial object
      coordinates(df) <- ~lon+lat
      # and a gridded object (so you can use image)
      gridded(df) <- TRUE
      close.ncdf(con)
    }
  else if (ext=="txt") {
    # one of those obscure text formats....
    # skip 7 lines
    df <- read.fwf(filename, widths=c(8,8, 5,7, 24,9, 9, 9), header=F, skip=7, comment.char = "!", strip.white = TRUE, as.is=c("V5"))
    names(df) <- c("lat", "lon", "ID", "location", "name", "250yrsBP-now", "now-250yrsAP", "now")
  }
    
  return(df)
}

