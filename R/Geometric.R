source("R/likelihood.R")
#' Geometric Likelihood Function
#'
#' @inheritParams stats::dgeom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likgeom <- likelihood(dgeom)
