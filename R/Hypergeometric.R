source("R/likelihood.R")
#' Hypergeometric Likelihood Function
#'
#' @inheritParams stats::dhyper
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likhyper <- likelihood(dhyper)
