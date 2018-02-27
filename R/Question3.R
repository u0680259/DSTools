#' @title  Create and document a function that generates a density plot for a specific variable in a data.frame
#'
#' @param samples specify how many samples to run
#' @param sample_size the number of obs in each sample
#' @param mean population mean
#' @param sd population sd
#' @param df the data frame
#'
#' @export
#'
dens_plot <- function(samples = 100, sample_size = 500, mean = 0, sd = 1){
  samplemeans <- rep(NA, samples) #empty vector
  df <- data.frame(
    s100 = sampledist(250, 100) #sample dist where sample size = 100
  ) %>%
    gather(sample_size, samplemeans) # shifts data from wide to long
  for(i in 1:samples){ #creating obs for the sample
    x <- rnorm(sample_size, mean = mean, sd = sd) #giving them a random normal dist
    samplemeans[i] = mean(x)
  }
  return(samplemeans)
  hist(df)
}
