source("R/likelihood.R")
#' Negative Binomial Log Likelihood Function
#'
#' The log likelihood of a negative binomial density with data, x, size, prob
#' and mu parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the negative binomial
#' density given the data where size, prob, and mu can be held constant or if
#' vector were given vector will be returned.
#'
#' @inheritParams stats::dnbinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples liknbinom(x = rnbinom(n = 2, size = 3, prob = .4),
#'         size = 3, prob = .4)
liknbinom <- likelihood(dnbinom)
