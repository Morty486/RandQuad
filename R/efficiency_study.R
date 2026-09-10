#' Compare Efficiency of Random Number Generators
#'
#' @param n_values A numeric vector of positive integers
#' @param theta A numeric value specifying the distribution parameter. Default
#'  is 2.
#' @param B A positive integer specifying the number of replications.
#'
#' @returns A data frame containing the method, sample size, summary statistics
#' `of execution time.
#' @export
#'
#' @examples
#' efficiency_study(c(100,1000,10000))
efficiency_study <- function(n_values = c(10^3),
                             theta = 2,
                             B = 10,
                             seed = 123){

  set.seed(seed)

  result_rquad <- lapply(n_values, function(n) check_efficiency(
    rquad,
    n = n,
    theta = theta,
    B = B
  ))

  result_rquad2 <- lapply(n_values, function(n) check_efficiency(
    rquad2,
    n = n,
    theta = theta,
    B = B
  ))

  result_1 <- data.frame( Method = "rquad",
                          n = n_values,
                          do.call(rbind, result_rquad))
  result_2 <- data.frame( Method = "rquad2",
                          n = n_values,
                          do.call(rbind, result_rquad2))

  results <- rbind(result_1,result_2)

  return(results)

}
