#'Plot multi-line axis labels
#'
#'\code{addline_format} Multi-line axis labels
#'
#'  
#'  
#'@return NULL
#'  
#' @examples
#' # 
#' ggplot(counts, aes(x=norm, y=value, fill=type)) +
#' geom_col() +
#' scale_x_discrete(labels=addline_format(c("FirstLine SecondLine", "Two-line Label")))
#' 
#'@export
addline_format <- function(x,...){
  gsub('\\s','\n',x)
}