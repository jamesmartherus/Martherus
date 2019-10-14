#'Re-install my packages
#'
#'\code{install_my_packages} Install or update packages I use often 
#'
#'  
#'  
#'@return NULL
#'  
#' 
#'@export
install_my_packages <- function() {
  devtools::install_github(c("jamesmartherus/anesr",
                             "jamesmartherus/martherus",
                             "jamesmartherus/shotplot",
                             "jamesmartherus/nhldata")) #Personal packages
  install.packages("drumr")
  install.packages(c("anytime",
                   "lubridate",
                   "hms")) #Packages to work with time
  install.packages("beepr")
  install.packages("tidyverse")
  devtools::install_github("brooke-watson/BRRR")
  install.packages(c("curl",
                     "Jsonlite",
                     "Rcurl",
                     "httr",
                     "ipify",
                     "rvest",
                     "webshot")) #Packages for web scraping/web data
  install.packages("foreign")
  install.packages("fuzzyjoin")
  install.packages(c("gganimate",
                   "shiny",
                   "scales",
                   "sjPlot",
                   "interplot")) #Packages for data visualization
  install.packages("gridExtra")
  install.packages("hexSticker") #Easily create hex stickers
  install.packages("Hmisc")
  install.packages("iatgen") #Generate IATs for Qualtrics
  install.packages("lmtest") #Various tests for linear models
  install.packages("maps",
                   "maptools") #Packages to work with geographic data
  install.packages("Rcpp") #Integrate R and C++
  install.packages("rdrobust") #Robust regression discontinuity
  install.packages("reshape2") #Reshape data
  install.packages("rio") #Flexible data I/O package
  install.packages(c("devtools",
                     "roxygen2")) #Packages for writing R packages
  install.packages("sandwich") #Robust covariance matrix estimators
  install.packages("scales")
  install.packages(c("SnowballC",
                   "tidytext",
                   "stopwords",
                   "tokenizers",
                   "wordcloud")) #Text analysis packages
  install.packages("spelling") #Spell-checking in R
  install.packages("spotifyr") #Access to Spotify API
  install.packages("stargazer") #Easy Regression Tables
  install.packages("survey")
  install.packages("swirl") #R Tutorials
  install.packages("useful")
  install.packages("xtable")
}