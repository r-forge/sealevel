trim <- function (string) {
  result <- gsub("^\\s+|\\s+$", "", string)
  return(result)
}
