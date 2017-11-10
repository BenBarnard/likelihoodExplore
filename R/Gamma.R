source("R/likelihood.R")
#' Gamma Log Likelihood Function
#'
#' The log likelihood of a gamma density with data, x, shape, rate
#' and scale parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the gamma density given the
#' data where shape, scale, and rate can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dgamma
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likgamma(x = rgamma(n = 2, shape = 3),
#'         shape = 3)
likgamma <- likelihood(dgamma)
