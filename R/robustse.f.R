# Written by Joshua Gubler ~  http://joshuagubler.com.
# Uses multiwaycov from: https://cran.r-project.org/web/packages/multiwayvcov/multiwayvcov.pdf

#' Calculates Huber-White heteroskedasticity-robust standard errors 
#' @param model an lm or glm object
#' @param cluster the variable to be clustered, prepended by a ~ (e.g., ~state).
#' @param df_correction Setting df_correction = F will not count levels of your cluster variable against degrees of freedom.
#' @keywords standard errors
#' @export
#' @examples
#' robustse.f()

robustse.f <- function(model, cluster, df_correction) {
  require(sandwich)
  require(lmtest)
  require(multiwayvcov)
  if(missing(cluster)) {
    name <- deparse(substitute(model))
    modelname <- paste(name,"rob",sep=".")
    model$se <- coeftest(model, vcov=vcovHC(model,"HC1"))[,2]
    model$vcovHC <- vcovHC(model,"HC1")
    assign(modelname,model,envir = .GlobalEnv)
    coeftest(model, vcov=vcovHC(model,"HC1"))
  } else {
    name <- deparse(substitute(model))
    modelname <- paste(name,"rob",sep=".")
    vcovCL <- cluster.vcov(model, cluster, df_correction = df_correction)
    model$vcovCL <- vcovCL
    modelname <- paste(name,"clustrob",sep=".")
    model$se <- coeftest(model, vcovCL)[,2]
    assign(modelname,model,envir = .GlobalEnv)
    coeftest(model, vcovCL)
  }
}