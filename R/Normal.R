source("R/likelihood.R")
#' Normal Likelihood Function
#'
#' @inheritParams stats::dnorm
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
liknorm <- likelihood(dnorm)
