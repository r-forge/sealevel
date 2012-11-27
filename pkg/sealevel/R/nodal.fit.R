nodal.fit <- function(zoo, degree=1) {
  # Fit a seasonal regression.
  h <- as.numeric(zoo)
  years <- as.year(zoo)
  A <- sin(2*pi*years/18.613)
  B <- cos(2*pi*years/18.613)
  if (degree == 1) {
    h.lm <- lm(h ~ years + A + B)
  }
  else if (degree == 2) {
    years2 <- years^2
    h.lm <- lm(h ~ years + years2 + A + B)
  }
  return(h.lm)
}
