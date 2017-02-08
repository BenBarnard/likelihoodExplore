source("R/likelihood.R")
#' Multinomial Likelihood Function
#'
#' @inheritParams stats::dmultinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likmultinom <- likelihood(dmultinom)

