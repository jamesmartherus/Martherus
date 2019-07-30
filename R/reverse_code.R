#' Reverse Codes a variable
#' @param var a numeric vector to be reverse coded
#' @param lo the lowest value of var
#' @param hi the highest value of var
#' @keywords data cleaning
#' @export
#' @examples 
#' my_variable <- c(1,2,2,3,3,1)
#' new_variable <- reverse_code (var=my_variable,lo=1,hi=3)
#' new_variable
#' @return a reverse coded vector
#' standardize()
reverse_code <- function(var, lo, hi){
  if(!is.numeric(var)) stop(paste0('var is ',class(var),', must be numeric'))
  if(!is.numeric(lo)) stop(paste0('lo is ',class(lo),', must be numeric'))
  if(!is.numeric(hi)) stop(paste0('hi is ',class(hi),', must be numeric'))
  if(!is.vector(var)) stop('var must be a vector')
  if(lo > hi) stop('lo must be less than hi')

  new <- vector()
  if(lo==0){
    for(i in unique(var)){
      new[var==i] <- abs(i - hi)
    }
  }
  else if(lo!=0){
    for(i in unique(var)){
      new[var==i] <- (hi + 1) - i
    }
  }
return(new)
}