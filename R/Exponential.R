#' Exponential Likelihood Function
#'
#' @param data vector of data points
#' @param rate rate of the exponential where the mean is 1 / rate
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likexp(rexp(4, 2), 2)
likexp <- function(data, rate, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    n * log(rate) + (- rate * sum(data))
  }else{
    (rate ^ n) * exp(-rate * sum(data))
  }
}
