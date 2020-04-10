#'NULL/NOT NULL Infix Operator
#'
#'\code{%||%} NULL/NOT NULL Infix Operator
#'
#'  
#'  
#'@return NULL
#'  
#' @examples
#' 
#'@export
`%||%` <- function(lfs, rhs) {
  if (!is.null(lhs)) {
    lhs
  } else {
    rhs
  }
}
