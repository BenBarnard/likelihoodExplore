source("R/likelihood.R")
#' Wilcoxon Rank Sum Log Likelihood Function
#'
#' The log likelihood of a Wilcoxon rank sum density with data, x, m and n
#' parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the Wilcoxon rank sum
#' density given the data where m and n can be held constant or if vector were
#' given vector will be returned.
#'
#' @inheritParams stats::dwilcox
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
#' @examples likwilcox(x = rwilcox(nn = 2, m = 3, n = 4),
#'         m = 3, n = 4)
likwilcox <- likelihood(dwilcox)

