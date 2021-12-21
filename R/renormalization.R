#' @title plot renormalization eigen spectrum of random matrix
#' @description plot renormalization eigen spectrum of random matrix
#' @param n the number of point
#' @param dim the dimension of the point
#' @param f the function from distance to correlation 
#' @param R the function Generate random matrix
#' @return plot renormalization eigen spectrum of random matrix
#' @importFrom stats runif
#' @importFrom stats dist
#' @importFrom graphics lines
#' @examples
#' \dontrun{
#' RM(100, 3, f = exp)
#' }
#' @export
renormalization <- function(dim, f = function(x){exp(-x)}, n = c(32,64,128,256), R = ERM){
    den = eigen_spectrum(n[1], dim, f =f)
    x = den$x
    y = den$y
    plot(x,y)
    for (N in n){
        den = eigen_spectrum(N, dim, f =f)
        x = den$x
        y = den$y
        lines(x,y)
    }
}