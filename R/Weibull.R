source("R/likelihood.R")
#' Weibull Likelihood Function
#'
#' @inheritParams stats::dweibull
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likweibull <- likelihood(dweibull)
