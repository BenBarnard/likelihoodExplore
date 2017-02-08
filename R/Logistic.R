source("R/likelihood.R")
#' Logistic Likelihood Function
#'
#' @inheritParams stats::dlogis
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
liklogis <- likelihood(dlogis)
