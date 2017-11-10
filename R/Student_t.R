source("R/likelihood.R")
#' Student's t Log Likelihood Function
#'
#' The log likelihood of a Student's t density with data, x, df and ncp
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the Student's t density
#' given the data where df and ncp can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dt
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likt(x = rt(n = 2, df = 4),
#'         df = 4)
likt <- likelihood(dt)
