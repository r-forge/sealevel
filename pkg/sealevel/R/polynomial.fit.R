polynomial.fit <- function (zoo, degree = 1) 
{
  # fit sea level
  h <- as.numeric(zoo)
  # use years since 1970
  years <- as.year(zoo)
  # the rest is rather basic
  if (degree == 1) {
    h.lm <- lm(h ~ years)
  }
  else if (degree == 2) {
    years2 <- years^2
    h.lm <- lm(h ~ years + years2)
  }
  return(h.lm)
}
