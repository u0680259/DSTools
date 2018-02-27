#' @title  prints out the min, max and range
#'
#' @param minimun this is the minimun value of x
#' @param r the range of x
#' @param maximun this is the maximun value of x
#'
#' @export
#'

min_max_range <- function(x){
  minimum<- min(x)
  r <- max(x) - min(x)
  maximum <- max(x)
  print(minimum)
  print(maximum)
  print(r)
}
