source("R/likelihood.R")
#' Uniform Likelihood Function
#'
#' @inheritParams stats::dunif
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likunif <- likelihood(dunif)
