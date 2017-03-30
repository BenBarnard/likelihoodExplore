source("R/likelihood.R")
#' Dirichlet Likelihood Function
#'
#' @inheritParams dirichlet::ddirichlet
#' @importFrom dirichlet ddirichlet
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likdirichlet <- likelihood(dirichlet::ddirichlet)
