#' Distribution function for a quadratic function
#'
#' @param q  A numeric value
#' @param theta A positive numeric value specifying the distribution parameter.
#'
#' @returns CDF value for corresponding q
#' @export
#'
#' @examples
#' pquad(0.1,1)
pquad <-function(q,theta=2){


  if (!is.numeric(q)) {
    stop("q must be numeric")
  }

  if (!is.numeric(theta) | length(theta) != 1) {
    stop("theta must be a numeric value")
  }

  if (theta <= 0){
    stop("theta must be positive")
  }


  cdf <- ifelse(q <= -1,
                0,
                ifelse(q >= 1,
                       1,
                       (theta*q^3+3*q+theta+3)/(2*(theta+3))))

  return(cdf)
}
