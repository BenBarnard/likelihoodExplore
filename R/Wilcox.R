source("R/likelihood.R")
#' Wilcox Likelihood Function
#'
#' @inheritParams stats::dwilcox
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likwilcox <- likelihood(dwilcox)

