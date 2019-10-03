install.packages("devtools")
library("devtools")
devtools::install_github("klutometis/roxygen")
library(roxygen2)

setwd("/Users/jamesmartherus/Dropbox/Research/martherus/")
devtools::create("martherus")

roxygenize()
