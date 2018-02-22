CIplot <- function(sample_size = 100){

  plot(NULL
       , xlim = c(0 - 1, 0 + 1)
       ,ylim = c(0, 1)
       , yaxt = 'n'
       , xlab = "Confidence Level"
       , ylab = "Samples"
  )

  abline(v = 0, col = 'black')
  mtext(expression(mu), cex = 2, at = 0)

  for(i in 1:100){
    x <- rnorm(100)
    tt <- t.test(x)
    tt$conf.int

    interval1 = tt$conf.int[1]
    interval2 = tt$conf.int[2]
    if(interval1 < 0 & interval2 > 0){
      lines(c(interval1,interval2), c(i,i), lwd=2, col = 'red')
    } else {
      lines(c(interval1, interval2), c(i,i), lwd=2, col = 'black')
    }
  }}


CI(1000)
