require("zoo")
require("plyr")
require("stringr")
read.psmsl <- function(description="rlr_monthly.zip"){

# we can't accept a file connection as an argument because we have to read multiple files from one zip file
  
## comments from http://www.psmsl.org/data/obtaining/notes.php about the data
## The monthly files list the date (year-month in decimal form), mean sea level value for the month, number of missing days of data in the month, and 'flag for attention'.
## The Fortran fixed format for reading this data is 1x,f10.4,1x,i6,1x,i2,1x,i3.
## The year-month decimal form is given by year + (month-0.5)/12.0 thereby centering the monthly mean essentially in the middle of the calendar month in question.
## The monthly mean values are in mm.
##  If there are no data for a month between the first and last date values, then the mean sea level value for that month will be set to -99999.
## Thus, the entire time span will be padded.
## If the data for the month has been interpolated, the number of missing days will be set to 99. The 'flag for attention' is covered below.

## The annual files (RLR only as Metric annual means have no application) list year, mean sea level value for the year (mm), missing days flag for the year, and 'flag for attention'.
## The Fortran fixed format for reading this data is 1x,i4,1x,i6,1x,a1,1x,i3.
## The missing days flag is either "N" or "Y". "Y" indicates that either one monthly value is missing from the average or that the total number of missing days in the year was at least 30.
## If over two monthly values are missing, no annual mean is calculated.
## If there is a missing year in the data, the gap is padded with a mean sea level value of -99999. 
  
filename <- basename(description)
match <- str_match(filename, '(\\w+)_(\\w+)\\.zip')

if (any(is.na(match))) {
  stop("Expecting description in the form of code_freq.zip")
}

code <- match[[2]]
freq <- match[[3]]

# now for some pasting....
name <- paste(code, freq, sep="_")
filelist <- file.path(name,'filelist.txt')

stations.df <- read.table(unz(description, filelist),
                          sep=";",
                          strip.white=TRUE,
                          header=FALSE,
                          dec=".",
                          fill=TRUE,
                          quote="",
                          colClasses=c("integer", "numeric", "numeric", "character", "integer", "integer", "character"),
                          col.names=c("ID", "latitude", "longitude", "name", "coastline.code", "station.code", "quality.flag")
                          )
row.names(stations.df) <- stations.df$ID
# convert data.frame into a list of data.frames with ID as a lookup
stations <- dlply(stations.df, "ID")
stations <- llply(stations,as.list)

# This could be done more elegantly without a loop, but for now let's do it like this.
n <- nrow(stations.df)
for(i in 1:n){
  # get the next station
  station <- stations[[i]]

  # We need to speed this up in order for cran testing...
  # this part could go into a separate function ....
  # more pasting...
  filename <- paste(as.character(station$ID), paste(code,"data",sep=""), sep=".")
  fullfilename <- file.path(name, 'data', filename)
  con <- unz(description, fullfilename)
  daysmissingclass <- ifelse(freq=="monthly", "numeric","character")
  data <- read.table(con,
                     sep=";",
                     strip.white=TRUE,
                     header=FALSE,
                     dec=".",
                     fill=TRUE,
                     quote="",
                     colClasses=c("numeric", "numeric", daysmissingclass, "integer"),
                     col.names=c("year.month", "waterlevel", "days.missing", "flag")
                     )
  try(close(con), TRUE) # somehow con is not a valid connection anymore after read.table, so just try to close it, ignore the error
  # put it back
  data$waterlevel[data$waterlevel==-99999] <- NA
  # store all data in data
  station$data <- data
  station$name <- trim(station$name)
  # Create a convenient zoo object
  t <- yearmon(data$year.month)
  station$zoo <- zoo(data$waterlevel, t)
  stations[[i]] <- station
}
return(stations)
}
