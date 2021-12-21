#' @title Generate Euclidean random matrix
#' @description Generate Euclidean random matrix
#' @param N the number of point
#' @param dim the dimension of the point
#' @param f the function from distance to correlation 
#' @return a Euclidean random matrix corr
#' @importFrom stats runif
#' @importFrom stats dist
#' @examples
#' \dontrun{
#' RM(100, 3, f = exp)
#' }
#' @export
ERM <- function(N, dim = 3, f = function(x){exp(-x)}){
    x <- matrix(data = NA, nrow = N, ncol = dim)
    for (i in 1:dim){
    x[,i] <- runif(N)
    }
    distance <- dist(x,diag = TRUE, upper = TRUE)
    distance <- as.matrix(distance)
    corr <- f(distance)
    return(corr) 
}