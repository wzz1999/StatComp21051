#' @title computation log eigen spectrum of random matrix
#' @description computation log eigen spectrum of random matrix
#' @param N the number of point
#' @param dim the dimension of the point
#' @param n number of repetitions
#' @param f the function from distance to correlation 
#' @param R the function Generate random matrix
#' @return eigen spectrum
#' @importFrom stats runif
#' @importFrom stats dist
#' @importFrom stats density
#' @examples
#' \dontrun{
#' x = eigen_spectrum(10, 3)$x
#' y = eigen_spectrum(10, 3)$y
#' plot(x,y)
#' }
#' @export
log_spectrum <- function(N, dim, n = 100, f = function(x){exp(-x)}, R = ERM){
    eigs = matrix(data = NA, nrow = N, ncol = n)
    for (i in 1:n){
        corr = R(N, dim = dim, f = f)
        eig = eigen(corr)$values
        eigs[, i] = eig
    }
    eigs = log(pmax(eigs,0))
    x = density(eigs)$x
    y = density(eigs)$y
    den = density(eigs)
    den$y = log(y)
    return(den)
}