source("R/likelihood.R")
#' Betalu Likelihood Function
#'
#' @inheritParams betalu::dbetalu
#' @importFrom betalu dbetalu
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likbetalu <- likelihood(betalu::dbetalu)
