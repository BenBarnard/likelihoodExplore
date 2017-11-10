source("R/likelihood.R")
#' Log Normal Log Likelihood Function
#'
#' The log likelihood of a log normal density with data, x, meanlog and sdlog
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the log normal density
#' given the data where meanlog and sdlog can be held constant or if vector were
#' given vector will be returned.
#'
#' @inheritParams stats::dlnorm
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples liklnorm(x = rlnorm(n = 2))
liklnorm <- likelihood(dlnorm)
