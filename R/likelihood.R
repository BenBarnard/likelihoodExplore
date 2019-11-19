#' Likelihood Function Maker
#'
#' Function that creates a log likelihood function given a density function
#' density.
#'
#' @param density density function used
#' @param ... other options
#'
#' @importFrom rlang expr enexpr enexprs new_function invoke env_get sym set_names
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

  userXPos <- userArgNames == "x"
  densityXPos <- densityArgNames == "x"

  missUserArgPos <- !(densityArgNames %in% userArgNames)
  missingUserArguments <- densityArguments[missUserArgPos]
  missingUserArguments <- missingUserArguments[!(names(missingUserArguments) %in% c("log", "x"))]

  if(any(userLogPos)){
    logArg <- userArguments[userLogPos]
    userArguments <- userArguments[!(userLogPos)]
  }else{
    logArg <- densityArguments[densityLogPos]
  }

  if(any(userXPos)){
    XArg <- userArguments[userXPos]
    userArguments <- userArguments[!(userXPos)]
  }else{
    XArg <- densityArguments[densityXPos]
  }



  arguments <- c(missingUserArguments, userArguments, XArg, logArg)

  func <- new_function(arguments, expr({

    form <- map(set_names(ls(), ls()), function(x){
      tryCatch(env_get(nm = x, inherit = TRUE),
               error = function(cnd){NULL})
      })
    form <- form[!sapply(form, is.null)]

    if(log == TRUE){
      value <- Reduce(`+`, rlang::invoke(map, c(.x = list(!!sym("x")),
                                                .f = expr(!!density),
                                                form[!(names(form) %in% "x")])))
    }else if(log == FALSE){
      value <- Reduce(`*`, rlang::invoke(map, c(.x = list(!!sym("x")),
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
