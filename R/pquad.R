




pquad <-function(q,theta){


  if (!is.numeric(q)) {
    stop("q must be numeric")
  }

  if (!is.numeric(theta) | length(theta) != 1) {
    stop("theta must be a numeric value")
  }

  if (theta <= 0){
    stop("theta must be positive")
  }



  if (q <= -1){
    return(0)
  }else if (q >= 1){
    return(1)
    }else{
    cdf <- (theta*q^3+3*q+theta+3)/(2*(theta+3))
    return(cdf)
  }
}
