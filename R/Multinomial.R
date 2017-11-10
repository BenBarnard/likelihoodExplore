source("R/likelihood.R")
#' Multinomial Log Likelihood Function
#'
#' The log likelihood of a multinomial density with data, x, size and prob
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the multinomial density
#' given the data where size and prob can be held constant or if vector were
#' given vector will be returned.
#'
#' @inheritParams stats::dmultinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likmultinom(x = rmultinom(n = 2, size = 3, prob = .4),
#'         size = 3, prob = .4)
likmultinom <- likelihood(dmultinom)

