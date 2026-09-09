
#' Random number generator for a quadratic function using accept-reject sampling
#'
#' @param n A positive integer
#' @param theta A positive numeric value
#'
#' @returns A vector of random numbers
#' @export
#'
#' @examples
#' rquad2(1000,1)
rquad2 <- function(n,theta){


  if (!is.numeric(n) | length(n) != 1) {
    stop("n must be a numeric value")
  }

  if (!is.numeric(theta) | length(theta) != 1) {
    stop("theta must be a numeric value")
  }

  if (n <= 0 | n != as.integer(n)){
    stop("n needs to be a positive integer")
  }

  if (theta <= 0){
    stop("theta must be positive")
  }


  x <- c()

  while (length(x) < n){

     U <- runif(1)
     y <- runif(1,-1,1)

    if (U <= (1+theta*y^2)/(1+theta)){
      x <- c(x,y)
    }

  }

  return(x)
}
