## Code to read the data
honey_data <- readr::read_csv("data/US_honey_dataset_updated.csv")

## Available data on the data/ directory
usethis::use_data(honey_data, overwrite = TRUE)
