#' Checking everything works
#'
#' @param n A positive integer
#' @param theta A numeric value specifying the distribution parameter. Default
#' is 2.
#'
#' @returns print a theoretical vs emprical data frame, histogram, and emprical
#' cdf
#' @importFrom stats var ecdf runif uniroot
#' @importFrom graphics par hist curve
#' @export
#'
#' @examples
#' check_rquad()
check_rquad <- function(n = 10000, theta = 2){

  mean_theory <- 0
  variance_theory <- (3*theta+5)/(5*(theta+3))


  x <- rquad(n,theta)
  mean_empirical <- mean(x)
  variance_empirical <- var(x)


  comparison <- data.frame(
    Name = c("mean","variance"),
    Theoretical = c(mean_theory,variance_theory),
    Empirical = c(mean_empirical,variance_empirical)
  )

  print(comparison)


  par(mfrow = c(1, 2))
  hist(x,
       probability = TRUE)
  curve(dquad(x,theta),
        from = -0.999,
        to = 0.999,
        add = TRUE,
        col = "red")

  plot(ecdf(x))
  curve(pquad(x,theta),
        from = -0.999,
        to = 0.999,
        add = TRUE,
        col = "red")


}


