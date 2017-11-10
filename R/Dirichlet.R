source("R/likelihood.R")
#' Dirichlet Log Likelihood Function
#'
#' The log likelihood of a dirichlet density with data, x, alpha parameter.
#'
#' @details The log likelihood is the log of a function of parameters given the
#' data.
#'
#' @return A numeric scalar for the log likelihood of the dirichlet density
#' given the data where alpha can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams dirichlet::ddirichlet
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likdirichlet(x = dirichlet::rdirichlet(n = 2, alpha = 4),
#'         alpha = 4)
likdirichlet <- likelihood(dirichlet::ddirichlet)
