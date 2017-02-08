source("R/likelihood.R")
#' Cauchy Likelihood Function
#'
#' @inheritParams stats::dcauchy
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likcauchy <- likelihood(dcauchy)
