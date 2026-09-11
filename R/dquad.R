#' Density of a quadratic function
#'
#' @param x A numeric value
#' @param theta A positive numeric value specifying the distribution parameter.
#'
#' @returns Density value for corresponding x
#' @export
#'
#' @examples
#' dquad(0,1)
dquad <- function(x, theta=2){


  if (!is.numeric(x)) {
    stop("x must be numeric")
  }

  if (!is.numeric(theta) | length(theta) != 1) {
    stop("theta must be a numeric value")
  }

  if (theta <= 0){
    stop("theta must be positive")
  }

  pdf <- ifelse(x <= -1 | x >= 1,
                0,
                3/(2*(theta+3))*(1+theta*x^2))

  return(pdf)
}
