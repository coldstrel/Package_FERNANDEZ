#' Filter bees total value production on multiple years
#'
#' This function allows the user to get the total value of production for one or more years for a specific state in the USA.
#'
#' @param dataset A data frame containing the bee colony information.
#' @param state A character string specifying the state for which to filter the data.
#' @param year A numeric or vector of years to filter the data (e.g., 1995 or c(1995, 1996)).
#' @importFrom rlang quo `!!`
#' @importFrom dplyr filter group_by summarise
#' @export
#' @return A data frame containing the total value of production for the specified `state` and `year`.
#' @details
#' This function allows the user to get the total value production for one or multiple years for a specific state in the USA.
#' @examples
#'
#' # Get value total for Alabama state on 1995
#' value_by_year(honey_data, "Alabama", 1995)
#'
#' # Get value total for Alabama state on 1995 and 1996
#' value_by_year(honey_data, "Alabama", c(1995, 1996))

value_by_year <- function(dataset, state, year) {
  result <- dataset |>
    dplyr::filter(state == !!state, year %in% !!year) |>
    dplyr::group_by(year, state) |>
    dplyr::summarise(total = sum(production, na.rm = TRUE), .groups = "drop")

  # Rename columns for the result
  colnames(result) <- c("year", "state", "total")
  return(result)
}
