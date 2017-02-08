source("R/likelihood.R")
#' Beta Likelihood Function
#'
#' @inheritParams stats::dbeta
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likbeta <- likelihood(dbeta)
