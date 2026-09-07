




rquad <- function(n,theta){

  U <- runif(n)

  F_x <- function(x){
    return((theta*x^3+3*x+theta+3)/(2*(theta+3)))
  }
  F_eq <- function(x, u) {
    return(F_x(x) - u)
  }

  x <- sapply(U, function(u) {
    uniroot(
      F_eq,
      interval = c(-1, 1),
      u = u
    )$root
  })

  return(x)
}
