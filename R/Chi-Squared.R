source("R/likelihood.R")
#' Chi-Squared Log Likelihood Function
#'
#' The log likelihood of a chi-squared density with data, x, df and ncp
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the chi-squared density
#' given the data where df and ncp can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dchisq
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likchisq(x = rchisq(n = 2, df = 4),
#'         df = 4)
likchisq <- likelihood(dchisq)
