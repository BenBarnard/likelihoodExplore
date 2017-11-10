source("R/likelihood.R")
#' Poisson Log Likelihood Function
#'
#' The log likelihood of a Poisson density with data, x, lambda parameter.
#'
#' @details The log likelihood is the log of a function of parameters given the
#' data.
#'
#' @return A numeric scalar for the log likelihood of the Poisson density given
#' the data where lambda can be held constant or if vector were given vector
#' will be returned.
#'
#' @inheritParams stats::dpois
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likpois(x = rpois(n = 2, lambda = 4),
#'         lambda = 4)
likpois <- likelihood(dpois)
