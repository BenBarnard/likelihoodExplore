source("R/likelihood.R")
#' Uniform Log Likelihood Function
#'
#' The log likelihood of a uniform density with data, x, min and max parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the
#' data.
#'
#' @return A numeric scalar for the log likelihood of the uniform density given
#' the data where min and max can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dunif
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likunif(x = runif(n = 2))
likunif <- likelihood(dunif)
