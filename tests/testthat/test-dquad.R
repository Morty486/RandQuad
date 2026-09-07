test_that("dquad output the desired length", {
  d <- dquad(0.1,1)
  expect_length(d, 1)
})
