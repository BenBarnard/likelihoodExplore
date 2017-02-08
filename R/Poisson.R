source("R/likelihood.R")
#' Poisson Likelihood Function
#'
#' @inheritParams stats::dpois
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likpois <- likelihood(dpois)
