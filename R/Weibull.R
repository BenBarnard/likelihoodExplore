source("R/likelihood.R")
#' Weibull Log Likelihood Function
#'
#' The log likelihood of a Weibull density with data, x, shape and scale
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the Weibull density given
#' the data where shape and scale can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dweibull
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likweibull(x = rweibull(n = 2, shape = 3),
#'         shape = 3)
likweibull <- likelihood(dweibull)
