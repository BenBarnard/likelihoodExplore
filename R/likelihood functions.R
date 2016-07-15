#' Normal Likelihood Function
#'
#' @param data vector of data points
#' @param mu mean
#' @param sigma standard deviation
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples liknorm(rnorm(4), 0, 1)
liknorm <- function(data, ..., log = TRUE){
  n <- length(data)
  params <- list(...)
  if(length(params) == 0){mu <- mean(data)}else{mu <- params$mu}
  if(length(params) == 0){sigma <- sd(data)}else{sigma <- params$sigma}

  if(log == TRUE){
    (-n / 2) * log(2 * pi * sigma ^ 2) +
      (-1 / (2 * sigma ^ 2)) * sum((data - mu) ^ 2)
  }else{
    ((2 * pi * sigma ^ 2) ^ (-n / 2)) *
      exp((-1 /(2 * sigma ^ 2)) * sum((data - mu) ^ 2))
  }
}

#' Beta Likelihood Function
#'
#' @param data vector of data points
#' @param a shape parameter alpha
#' @param b shape parameter beta
#' @param log logical; if TRUE, output is the log likelihood
#'
#' @return
#' @export
#'
#' @examples likbeta(rbeta(4, 0.5, 0.5), 0.5, 0.5)
likbeta <- function(data, a, b, log = TRUE){
  n <- length(data)

  if(log == TRUE){
    (a - 1) * sum(log(data)) +
      (b - 1) * sum(log(1 - data)) -
      n * log(beta(a, b))
  }else{
    (prod(data) ^ (a - 1)) * (prod(1 - data) ^ (b - 1)) / beta(a, b)
  }
}

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
