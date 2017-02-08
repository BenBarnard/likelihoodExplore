source("R/likelihood.R")
#' Binomial Likelihood Function
#'
#' @inheritParams stats::dbinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likbinom <- likelihood(dbinom)

