#' Title
#'
#' @param impervious_fraction the fraction of the watershed that is considered "impervious" (unitless)
#' @param watershed_area the watershed area in acres
#'
#' @return volume of stormwater that needs to be handled in cubic feet
#' @export
#'
#' @examples
#' predict_runoff(impervious_fraction = 0.7, watershed_area = 180)

predict_runoff <- function(impervious_fraction, watershed_area) {
  out_eq <- 3630 * 1 * (0.05 + (0.9 * impervious_fraction)) * watershed_area
  return(out_eq)
}