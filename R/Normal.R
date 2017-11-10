source("R/likelihood.R")
#' Normal Log Likelihood Function
#'
#' The log likelihood of a normal density with data, x, mean and sd parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the
#' data.
#'
#' @return A numeric scalar for the log likelihood of the normal density given
#' the data where mean and sd can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dnorm
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples liknorm(x = rnorm(n = 2))
liknorm <- likelihood(dnorm)
