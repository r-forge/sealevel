read.dutch <- function(file) {
# if it's a character make it a file.
if (is.character(file)) {
  file <- file(file, "rt")
  on.exit(close(file))
}
# should be a connection now...
if (!inherits(file, "connection")) {
  stop("'file' must be a character string or connection")
}
firstline <- readLines(file, n=1)
match <- str_match_all(firstline, '[A-Z][A-Z +]+[A-Z]')
if(any(is.na(match))) {
  stop("Expected station name in first line")
}
name <- match[[1]][1]
ds <- read.table(file, col.names=c('year', 'waterlevel'))
t <- yearmon(ds$year)
station <- list()
station$name <- name
station$data <- ds
station$zoo <- zoo(ds$waterlevel, t)
return(station)
}
