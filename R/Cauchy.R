source("R/likelihood.R")
#' Cauchy Log Likelihood Function
#'
#' The log likelihood of a Cauchy density with data, x, location and scale
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the Cauchy density given
#' the data where location and scale can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dcauchy
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likcauchy(x = rcauchy(n = 2))
likcauchy <- likelihood(dcauchy)
