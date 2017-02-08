source("R/likelihood.R")
#' Negative Binomial Likelihood Function
#'
#' @inheritParams stats::dnbinom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
liknbinom <- likelihood(dnbinom)
