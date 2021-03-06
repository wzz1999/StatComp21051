% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eigen.R
\name{eigen_spectrum}
\alias{eigen_spectrum}
\title{computation eigen spectrum of random matrix}
\usage{
eigen_spectrum(N, dim, n = 100, f = function(x) {
    exp(-x)
}, R = ERM)
}
\arguments{
\item{N}{the number of point}

\item{dim}{the dimension of the point}

\item{n}{number of repetitions}

\item{f}{the function from distance to correlation}

\item{R}{the function Generate random matrix}
}
\value{
eigen spectrum
}
\description{
computation eigen spectrum of random matrix
}
\examples{
\dontrun{
x, y = eigen_spectrum(10, 3)
plot(x,y)
}
}
