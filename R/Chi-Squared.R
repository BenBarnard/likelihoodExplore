source("R/likelihood.R")
#' Chi-Squared Likelihood Function
#'
#' @inheritParams stats::dchisq
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likchisq <- likelihood(dchisq)
