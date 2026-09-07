test_that("pquad output the desired length", {
  p <- pquad(0.1,1)
  expect_length(p, 1)
})
