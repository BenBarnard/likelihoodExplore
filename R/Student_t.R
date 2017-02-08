source("R/likelihood.R")
#' Student t Likelihood Function
#'
#' @inheritParams stats::dt
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likt <- likelihood(dt)
