#' US Honey Production Data
#'
#' A dataset of honey production statistics across different states in the USA.
#'
#' @docType data
#' @name US_honey_dataset_updated
#' @usage data(US_honey_dataset_updated)
#' @format A data frame with 1,115 rows and 9 columns:
#' \describe{
#'   \item{state}{State in the USA where the honey production data was collected}
#'   \item{colonies_number}{Number of bee colonies in the state}
#'   \item{yield_per_colony}{Average yield per colony in the state (in pounds)}
#'   \item{production}{Total production (colonies_number * yield_per_colony), measured in pounds}
#'   \item{stocks}{Stocks held by producers, measured in pounds}
#'   \item{average_price}{Average price per pound of honey, in dollars}
#'   \item{value_of_production}{Total value of honey production (production * average_price), in dollars}
#'   \item{year}{Year in which the data was recorded}
#' }
#' @source <https://www.kaggle.com/datasets/mohitpoudel/us-honey-production-19952021>
"honey_data"
