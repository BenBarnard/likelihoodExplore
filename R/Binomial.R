#' Binomial Likelihood Function
#'
#' @param data vector of data points
#' @param size number of bernoulli trials
#' @param prob probability of success on each trial
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likbinom(rbinom(4, 1, .9), 1, .9)
likbinom <- function(data, size, prob, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    sum(log(choose(size, data))) +
      sum(data) * log(prob) +
      sum(size - data) * log(1 - prob)
  }else{
    prod(choose(size, data)) * (prob ^ sum(data)) *
      ((1 - prob) ^ sum(size - data))
  }
}
