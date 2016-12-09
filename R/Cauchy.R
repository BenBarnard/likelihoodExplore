#' Cauchy Likelihood Function
#'
#' @param data vector of data points
#' @param location location parameter
#' @param scale scale parameter
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likcauchy(rcauchy(4, 0, 1), 0, 1)
likcauchy <- function(data, location, scale, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    -n * log(pi * scale) + (-sum(log(1 + ((data - location) / scale) ^ 2)))
  }else{
    1 / (((pi * scale) ^ n) * prod(1 + ((data - location) / scale) ^ 2))
  }
}
