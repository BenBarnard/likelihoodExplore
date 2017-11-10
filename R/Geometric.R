source("R/likelihood.R")
#' Geometric Log Likelihood Function
#'
#' The log likelihood of a geometric density with data, x, prob parameter.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the geometric density
#' given the data where prob can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dgeom
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likgeom(x = rgeom(n = 2, prob = .4),
#'         prob = .4)
likgeom <- likelihood(dgeom)
