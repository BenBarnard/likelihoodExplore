source("R/likelihood.R")
#' Hypergeometric Log Likelihood Function
#'
#' The log likelihood of a hypergeometric density with data, x, m, n and k
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the hypergeometric density
#' given the data where m, n, and k can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::dhyper
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likhyper(x = rhyper(nn = 2, m = 3, n = 4, k = 2),
#'         m = 3, n = 4, k = 2)
likhyper <- likelihood(dhyper)
