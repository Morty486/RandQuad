test_that("rquad2 output the desired length", {
  x <- rquad2(100,1)
  expect_length(x, 100)
})


test_that("rquad2 output the number within support", {
  x <- rquad2(100,1)
  expect_all_true(x > -1 & x < 1)
})


test_that("rquad2 handle invalid parameter values", {
  expect_error(rquad2(100,0))
  expect_error(rquad2("100",0))
  expect_error(rquad2(-1,1))
})


test_that("rquad2 reproducibility under set.seed", {

  set.seed(123)
  x1 <- rquad2(100,1)

  set.seed(123)
  x2 <- rquad2(100,1)

  expect_equal(x1, x2)
})




test_that("rquad2 agreement between emprical and theoritical", {

  theta <- 1

  mean_theory <- 0
  variance_theory <- (3*theta+5)/(5*(theta+3))

  set.seed(123)
  x <- rquad2(10000,theta)

  expect_equal(mean(x), mean_theory, tolerance = 0.05)
  expect_equal(var(x), variance_theory, tolerance = 0.05)
})
