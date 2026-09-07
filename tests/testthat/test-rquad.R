test_that("rquad output the desired length", {
  x <- rquad(100,1)
  expect_length(x, 100)
})


test_that("rquad output the number within support", {
  x <- rquad(100,1)
  expect_all_true(x > -1 & x < 1)
})





test_that("rquad reproducibility under set.seed", {

  set.seed(123)
  x1 <- rquad(100,1)

  set.seed(123)
  x2 <- rquad(100,1)

  expect_equal(x1, x2)
})
