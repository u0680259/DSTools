
#' @title  Generates a poor man's sampling distribution
#'
#' @param samples specify how many samples to run
#' @param sample_size the number of obs in each sample
#' @param mean population mean
#' @param sd = population sd
#'
#' @export
#'
sampledist <- function(samples = 50, sample_size = 100, mean = 0, sd = 1){
  samplemeans <- rep(NA, samples) #empty vector
  for(i in 1:samples){ #creating obs for the sample
    x <- rnorm(sample_size, mean = mean, sd = sd) #giving them a random normal dist
    samplemeans[i] = mean(x)
  }
  return(samplemeans)
}

sampledist(100)

roxygen2::roxygenise()
