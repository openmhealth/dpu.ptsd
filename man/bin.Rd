\name{bin}
\alias{bin}
\title{Binning a vector}
\usage{
  bin(x, n = 10, width = NA)
}
\arguments{
  \item{x}{a numeric vector}

  \item{n}{integer, number of bins}

  \item{width}{width of a bin. If set, 'n' is ignored.}
}
\value{
  a list with breaks, count, density and mids of the bins
}
\description{
  Bin a vector in either 'n' bins, or bins of length
  'width'
}

