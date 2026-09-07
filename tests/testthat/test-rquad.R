test_that("rquad output the desired length", {
  x <- rquad(100,1)
  expect_length(x, 100)
})


test_that("rquad output the number within support", {
  x <- rquad(100,1)
  expect_all_true(x > -1 & x < 1)
})


test_that("rquad handle invalid parameter values", {
  expect_error(rquad(100,0))
  expect_error(rquad("100",0))
  expect_error(rquad(-1,1))
})


test_that("rquad reproducibility under set.seed", {

  set.seed(123)
  x1 <- rquad(100,1)

  set.seed(123)
  x2 <- rquad(100,1)

  expect_equal(x1, x2)
})




test_that("rquad agreement between emprical and theoritical", {

  theta <- 1

  mean_theory <- 0
  variance_theory <- (3*theta+5)/(5*(theta+3))

  set.seed(123)
  x <- rquad(10000,theta)

  expect_equal(mean(x), mean_theory, tolerance = 0.05)
  expect_equal(var(x), variance_theory, tolerance = 0.05)
})
