eof <-
function(con) {
  if (!isSeekable(con))  stop('eof not possible to detect on non seekable files')
  pos <- seek(con)
  eof <- length(readLines(con)) == 0
  seek(con,where=pos)
  return(eof)
}

