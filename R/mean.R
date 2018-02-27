#' @title  generates the mean
#'
#' @param result prints out x raised to the y power
#' @param r the range of x
#' @param maximun this is the maximun value of x
#'
#' @export
#'


mean <- function(variable){
  sum(variable)/length(variable)
}
