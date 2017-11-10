#' Log Likelihood Function Maker
#'
#' Function that creates a log likelihood function given a density function
#' density.
#'
#' @param density density function used
#' @param ... other options
#'
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
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
  dots <- lazyeval::lazy_dots(...)
  arguments <- do.call(formals, list(fun = density))
  parameters <- c(names(arguments[!(names(arguments) %in%
                                    c(names(dots)))]), "log")
  arguments$log <- TRUE
  if("x" %in% names(dots)){
    x <- lazyeval::lazy_eval(dots$x)
    dots <- dots[!(names(dots) == "x")]
  }
  if("log" %in% names(dots)){
    log <- lazyeval::lazy_eval(dots$log)
    dots <- dots[!(names(dots) == "log")]
  }

func <- function(){
  unevalcallparams <- as.list(match.call())[-1]
  params <- lapply(unevalcallparams,
                   function(y){eval(y, parent.frame(n = 3))})
  if("x" %in% names(params)){
    x <- params$x
    params <- params[!(names(params) == "x")]
  }else{
    x <- x
  }
  if ("log" %in% names(params)) {
    log <- params$log
    params <- params[!(names(params) == "log")]
  }else{
    log <- log
  }
  if(log == TRUE){
    value <- Reduce(`+`, do.call(plyr::llply, args = c(list(.data = x,
                                             .fun = density,
                                             log = TRUE),
                                             lazyeval::lazy_eval(dots),
                                          params)))
  }else{
    value <- Reduce(`*`, do.call(plyr::llply, args = c(list(.data = x,
                                               .fun = density,
                                               log = FALSE),
                                               lazyeval::lazy_eval(dots),
                                          params)))
  }
  value
}
  formals(func) <- arguments[names(arguments) %in% parameters]
  func
}
