test_that("rquad output the desired length", {
  x <- rquad(100,1)
  expect_length(x, 100)
})
