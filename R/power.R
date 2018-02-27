#' @title  print x raised to the power y
#'
#' @param result prints out x raised to the y power
#' @param r the range of x
#' @param maximun this is the maximun value of x
#'
#' @export
#'

power <- function(x, y) {
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}
