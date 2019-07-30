# From: https://gist.github.com/jgub/71642e0d427d40b4dd7aae5d30100486

#' Standardizes x from 0 to 1
#' @param x a vector to be standardized
#' @keywords data cleaning
#' @export
#' @examples
#' standardize()
standardize <- function(x, na.rm = T)
{
  (x - min(x, na.rm = T)) / (max(x, na.rm = T) - min(x,na.rm = T))
}