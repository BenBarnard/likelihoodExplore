source("R/likelihood.R")
#' Exponential Likelihood Function
#'
#' @inheritParams stats::dexp
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likexp <- likelihood(dexp)
