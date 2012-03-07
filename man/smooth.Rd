\name{smooth}
\alias{smooth}
\title{Smoothing}
\usage{
  smooth(x, y, n = 100)
}
\arguments{
  \item{x}{a numeric vector.}

  \item{y}{a numeric vector of length equal to x.}

  \item{n}{the size of the output vector defining the
  smooth curve. When set to 0, this is ommitted.}
}
\value{
  The predicted y-values for the given x on the smooth
  line. If n > 0, also a vector defining the full curve.
}
\description{
  Fit a 2 dimensional curve.
}

