source("R/likelihood.R")
#' Chi Log Likelihood Function
#'
#' The log likelihood of a chi density with data, x, df and ncp parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the chi density given the
#' data where df and ncp can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams chi::dchi
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likchi(x = chi::rchi(n = 2, df = 4),
#'         df = 4)
likchi <- likelihood(chi::dchi)
