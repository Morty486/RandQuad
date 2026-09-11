
#' Check the efficiency of the algorithm
#'
#' @param f function want to test
#' @param n A positive integer giving the number of observations to generate.
#' @param theta A positive numeric value specifying the distribution parameter.
#' @param B number of replicates
#'
#' @returns summary statistics of running time
#' @importFrom stats median sd
#' @export
#'
#' @examples
#' check_efficiency(rquad)
check_efficiency <- function(f,n=1000,theta=2,B=10){

  Time <- replicate(B, system.time(f(n, theta))["elapsed"])

  return(list=c(
    Mean = mean(Time),
    Median = median(Time),
    SD = sd(Time),
    Min = min(Time),
    Max = max(Time)
  ))

}
