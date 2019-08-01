#' James's ggplot2 theme
#'
#' Code based on theme_karl: https://github.com/kbroman/broman/blob/master/R/theme_karl.R
#' and theme_unicorn: https://www.r-bloggers.com/how-to-create-a-ggplot-theme-unicorn-edition/
#'
#' @param base_size Base font size
#' @param base_family Base font family
#' @param ... Passed to [ggplot2::theme()]
#' @keywords ggplot theme
#' @return An object as returned by [ggplot2::theme()]
#' @examples
#' library(ggplot2)
#' mtcars$cyl <- factor(mtcars$cyl)
#' ggplot(mtcars, aes(y=mpg, x=disp, color=cyl)) +
#'     geom_point() + theme_james()
#' @seealso [ggplot2::theme()]
#' @export
theme_james <- function(...) {
  theme_bw() +
    theme(panel.border = element_blank(),
          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.line = element_line(colour = "black"),
          axis.ticks.length=grid::unit(0, "cm"),
          strip.background=element_blank(),
          legend.key = element_blank(),
          legend.position = "bottom",
          ) 
}

james_theme <- theme_james