source("R/likelihood.R")
#' General Support Beta Log Likelihood Function
#'
#' The log likelihood of a general support beta density with data, x, shape1, shape2,
#' l, u, and ncp parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the general support beta
#' density given the data where shape1, shape2, l, u, and ncp can be held
#' constant or if vector were given vector will be returned.
#'
#' @inheritParams betalu::dbetalu
#' @importFrom betalu dbetalu
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likbetalu(x = betalu::rbetalu(n = 2, shape1 = 3, shape2 = 4),
#'           shape1 = 3, shape2 = 4)
#'
likbetalu <- likelihood(betalu::dbetalu)
