source("R/likelihood.R")
#' Chi Likelihood Function
#'
#' @inheritParams chi::dchi
#' @importFrom chi dchi
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likchi <- likelihood(chi::dchi)
