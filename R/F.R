#' F Log Likelihood Function
#'
#' The log likelihood of a F density with data, x, df1, df2 and ncp parameters.
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A numeric scalar for the log likelihood of the f density given the
#' data where df1, df2, and ncp can be held constant or if vector were given
#' vector will be returned.
#'
#' @inheritParams stats::df
#' @export
#'
#' @include likelihood.R
#'
#' @examples likf(x = rf(n = 2, df1 = 3, df2 = 4),
#'         df1 = 3, df2 = 4)
likf <- likelihood(df)
