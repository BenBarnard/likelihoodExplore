source("R/likelihood.R")
#' Binomial Log Likelihood Function
#'
#' The log likelihood of a binomial density with data, x, size and prob
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the binomial density given
#' the data where size and prob can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dbinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likbinom(x = rbinom(n = 2, size = 3, prob = .4),
#'         size = 3, prob = .4)
likbinom <- likelihood(dbinom)

