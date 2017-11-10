source("R/likelihood.R")
#' Logistic Log Likelihood Function
#'
#' The log likelihood of a logistic density with data, x, location and scale
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the logistic density given
#' the data where location and scale can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dlogis
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples liklogis(x = rlogis(n = 2))
liklogis <- likelihood(dlogis)
