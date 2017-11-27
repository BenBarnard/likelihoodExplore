#' Beta Log Likelihood Function
#'
#' The log likelihood of a beta density with data, x, shape1, shape2
#' and ncp parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the beta density given the
#' data where shape1, shape2, and ncp can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dbeta
#' @export
#'
#' @include likelihood.R
#'
#' @examples likbeta(x = rbeta(n = 2, shape1 = 3, shape2 = 4),
#'         shape1 = 3, shape2 = 4)
likbeta <- likelihood(dbeta)
