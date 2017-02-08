source("R/likelihood.R")
#' Log Normal Likelihood Function
#'
#' @inheritParams stats::dlnorm
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
liklnorm <- likelihood(dlnorm)
