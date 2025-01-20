my_function <- function(a,b){
  a + b
}

my_filter <- function(dataset, condition){
  dataset |>
    dplyr::filter({{condition}})
}
