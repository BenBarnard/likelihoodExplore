#' Likelihood Function Maker
#'
#' Function that creates a log likelihood function given a density function
#' density.
#'
#' @param density density function used
#' @param ... other options
#'
#' @importFrom rlang expr
#' @importFrom rlang enexpr
#' @importFrom rlang enexprs
#' @importFrom rlang new_function
#' @importFrom rlang invoke
#' @importFrom rlang env_get_list
#' @importFrom purrr map
#'
#' @export
#'
#' @details The log likelihood is the log of a function of parameters given the data.
#'
#' @return A function that is the log likelihood function from density function
#' density.
#'
#' @examples likelihood(dnorm, x = rnorm(100))
#'
likelihood <- function(density, ...){
  stopifnot(is.function(density))
  userArguments <- enexprs(...)
  density <- enexpr(density)


  densityArguments <- invoke(formals, density)

  userArgNames <- names(userArguments)
  densityArgNames <- names(densityArguments)

  stopifnot(userArgNames %in% densityArgNames)

  userLogPos <- userArgNames == "log"
  densityLogPos <- densityArgNames == "log"

  missUserArgPos <- !(densityArgNames %in% userArgNames)
  missingUserArguments <- densityArguments[missUserArgPos]
  missingUserArguments <- missingUserArguments[!(names(missingUserArguments) == "log")]

  if(any(userLogPos)){
    logArg <- userArguments[userLogPos]
    userArguments <- userArguments[!(userLogPos)]
    arguments <- c(missingUserArguments, userArguments, logArg)
  }else{
    logArg <- densityArguments[densityLogPos]
    densityArguments <- densityArguments[!(densityLogPos)]
    arguments <- c(missingUserArguments, userArguments, logArg)
  }

  func <- new_function(arguments, expr({
    form <- env_get_list(nms = ls())
    if(log == TRUE){
      value <- Reduce(`+`, rlang::invoke(map, c(.x = list(x),
                                                .f = expr(!!density),
                                                form[!(names(form) %in% "x")])))
    }else if(log == FALSE){
      value <- Reduce(`*`, rlang::invoke(map, c(.x = list(x),
                                                .f = expr(!!density),
                                                form[!(names(form) %in% "x")])))
    }else{
      stop(paste0("The log value: ", log, " will not work. Please specify either TURE or FALSE"))
    }
    value
  }
  ))

  func
}
