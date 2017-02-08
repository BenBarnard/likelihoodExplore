source("R/likelihood.R")
#' Gamma Likelihood Function
#'
#' @inheritParams stats::dgamma
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likgamma <- likelihood(dgamma)
