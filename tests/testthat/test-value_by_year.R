file_path <- system.file("data", "US_honey_dataset_updated.csv", package = "myProject")
honey_data <- readr::read_csv(file_path)

test_that("choosing a year returns the total value", {
  returned_value <- value_by_year(
                                  honey_data,
                                  "Alabama",
                                  2000 )
  expected_value <- tibble::as_tibble(
    list(
      "year" = 2000,
      "state" = "Alabama",
      "total" = 1248000)
  )

  expect_equal(returned_value, expected_value)


})

test_that("choosing multiple states (more than 2) fails", {

  # Try running the function with multiple states
  expect_error(
    value_by_year(
      honey_data,
      c("Alabama", "Idaho"),
      2000
    ),
    "Only 1 state is allowed"  # Custom error message
  )
})

test_that("Choosing multiple years give the total",{
  returned_value <- value_by_year(
                                  honey_data,
                                  "Idaho",
                                  c(1995,1996,1997)
                                  )
  expected_value <- readr::read_csv("test_data_value_year.csv")

  expect_equal(returned_value, expected_value)

})
