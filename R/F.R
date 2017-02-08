source("R/likelihood.R")
#' F Likelihood Function
#'
#' @inheritParams stats::df
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likf <- likelihood(df)
