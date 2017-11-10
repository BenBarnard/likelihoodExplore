source("R/likelihood.R")
#' Exponential Log Likelihood Function
#'
#' The log likelihood of a exponential density with data, x, rate parameter.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the exponential density
#' given the data where rate can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dexp
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likexp(x = rexp(n = 2))
likexp <- likelihood(dexp)
