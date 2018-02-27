#' @title  obtains R-Squared from the data - bootstrap function
#'
#' @param result prints out x raised to the y power
#' @param r the range of x
#' @param maximun this is the maximun value of x
#'
#' @export
#'


rsquare <- function(formula, data, indices) {
  d <- data[indices,]
  fit <- lm(formula, data=d)
  return(summary(fit)$r.square)
}
