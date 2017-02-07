#' Likelihood Function
#'
#' @param data vector of data points
#' @param ... other options
#' @param density density function used
#' @param log logical if log values are used
#'
#' @importFrom lazyeval lazy_dots
#' @importFrom lazyeval lazy_eval
#' @importFrom plyr llply
#' @export
#'
likelihood <- function(density, ...){
  dots <- lazy_dots(...)
  arguments <- do.call(formals, list(fun = density))
  parameters <- names(arguments[!(names(arguments) %in%
                                    c(names(dots)))])
  if("x" %in% names(dots)){
    x <- lazy_eval(dots$x)
    dots <- dots[!(names(dots) == "x")]
  }
  if("log" %in% names(dots)){
    log <- lazy_eval(dots$log)
    dots <- dots[!(names(dots) == "log")]
  }

func <- function(){
  unevalcallparams <- as.list(match.call())[-1]
  params <- lapply(unevalcallparams,
                   function(x){eval(x, parent.frame(n = 3))})
  if("x" %in% names(params)){
    x <- params$x
    params <- params[!(names(params) == "x")]
  }else{
    x <- x
  }
  if ("log" %in% names(params)) {
    log <- params$log
    params <- params[!(names(params) == "log")]
  }
  else {
    log <- log
  }
  if(log == TRUE){
    value <- Reduce(`+`, do.call(llply, args = c(list(.data = x,
                                             .fun = density,
                                             log = TRUE),
                                          lazy_eval(dots),
                                          params)))
  }else{
    value <- Reduce(`*`, do.call(llply, args = c(list(.data = x,
                                               .fun = density,
                                               log = FALSE),
                                          lazy_eval(dots),
                                          params)))
  }
  value
}
  formals(func) <- arguments[names(arguments) %in% parameters]
  func
}
