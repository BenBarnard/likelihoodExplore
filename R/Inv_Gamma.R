source("R/likelihood.R")
#' Inverse Gamma Likelihood Function
#'
#' @inheritParams invgamma::dinvgamma
#' @importFrom invgamma dinvgamma
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likinvgamma <- likelihood(invgamma::dinvgamma)
