#' F Likelihood Function
#'
#' @param data vector of data points
#' @param df1 degrees of freedom
#' @param df2 degrees of freedom
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likf(rf(4, 2, 2), 2, 2)
likf <- function(data, df1, df2, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    (-n * log(beta(df1 / 2, df2 / 2))) +
      (n * df1 / 2) * log(df1 / df2) +
      ((df1 / 2) - 1) * sum(log(data)) +
      (-(df1 + df2) / 2) * sum(log(1 + df1 * data / df2))
  }else{
    (1 / (beta(df1 / 2, df2 / 2) ^ n)) *
      ((df1 / df2) ^ (n * df1 / 2)) *
      prod(data) ^ ((df1 / 2) - 1) *
      prod(1 + df1 * data / df2) ^ (-(df1 + df2) / 2)
  }
}
