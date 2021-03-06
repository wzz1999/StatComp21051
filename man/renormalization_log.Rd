% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/renormalization_log.R
\name{renormalization_log}
\alias{renormalization_log}
\title{plot renormalization log eigen spectrum of random matrix}
\usage{
renormalization_log(
  dim,
  f = function(x) {     exp(-x) },
  n = c(32, 64, 128, 256),
  R = ERM
)
}
\arguments{
\item{dim}{the dimension of the point}

\item{f}{the function from distance to correlation}

\item{n}{the number of point}

\item{R}{the function Generate random matrix}
}
\value{
plot renormalization log eigen spectrum of random matrix
}
\description{
plot renormalization log eigen spectrum of random matrix
}
\examples{
\dontrun{
RM(100, 3, f = exp)
}
}
