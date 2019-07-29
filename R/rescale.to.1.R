# From: https://gist.github.com/jgub/71642e0d427d40b4dd7aae5d30100486

#' Rescales a variable to 1
#' @param var a vector to be rescaled
#' @param num max number on current scale (for a 7-point scale, num=7). Minimum must be 1
#' @keywords
#' @export
#' @examples
#' rescale.to.1()
rescale.to.1 <- function(var, num) 
{
  (1/(num-1)*(var-num)+1) 
}