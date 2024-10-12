test_that("inv_logit works", {
  expect_equal(inv_logit(0), 0.5)
  expect_equal(inv_logit(log(.2/.8)), 0.2)
})
