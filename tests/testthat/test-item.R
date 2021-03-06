context("item()")

test_that("adds class", {
  div() %>%
    item(order = 2) %>%
    expect_s3_class("shiny.tag") %>%
    expect_html_class("cas-item-order-2")
})

test_that("`fill` argument", {
  expect_error(item(div(), fill = FALSE))
  expect_error(item(div(), fill = 1))
})
