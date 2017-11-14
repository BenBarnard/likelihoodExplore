source("R/likelihood.R")
#' Inverse Gamma Log Likelihood Function
#'
#' The log likelihood of a inverse gamma density with data, x, shape, rate and
#'  scale parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the inverse gamma density
#' given the data where shape, rate, and scale can be held constant or if vector
#' were given vector will be returned.
#'
#' @inheritParams invgamma::dinvgamma
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likinvgamma(x = invgamma::rinvgamma(n = 2, shape = 3), shape = 3)
likinvgamma <- likelihood(invgamma::dinvgamma)
