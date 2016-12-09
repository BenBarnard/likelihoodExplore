#' Chi-Squared Likelihood Function
#'
#' @param data vector of data points
#' @param df degrees of freedom
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likechisq(rchisq(4, 2), 2)
likchisq <- function(data, df, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    (- df * n / 2) * log(2) +
      (- n * log(gamma(df / 2))) +
      ((df / 2) - 1) * sum(log(data)) +
      (-sum(data) / 2)
  }else{
    (1 / ((2 ^ (n * df / 2)) * gamma(df / 2) ^ n)) *
      (prod(data) ^ (df / 2 - 1)) * exp(-sum(data) / 2)
  }
}
