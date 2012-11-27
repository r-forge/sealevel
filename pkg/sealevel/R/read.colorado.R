read.colorado <- function(file) {
  # if it's a character make it a file.
  if (is.character(file)) {
    file <- file(file, "rt")
    on.exit(close(file))
  }
  # should be a connection now...
  if (!inherits(file, "connection")) {
    stop("'file' must be a character string or connection")
  }
  
}
