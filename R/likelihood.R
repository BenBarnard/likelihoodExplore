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
likelihood <- function(data, density, ..., log = TRUE){
  dots <- lazy_dots(...)
  arguments <- do.call(formals, list(fun = density))
  parameters <- names(arguments[!(names(arguments) %in%
                                    c("x", names(dots), "log"))])

  form <- rep(list(bquote()), length(parameters))
  names(form) <- parameters
  x <- if(log == TRUE){
    function(){
      unevalparams <- as.list(match.call())
      params <- lapply(unevalparams[names(unevalparams) %in% parameters],
                       function(x){eval(x, parent.frame(n = 3))})

      Reduce(sum, do.call(llply, args = c(list(.data = data,
                                             .fun = density,
                                             log = TRUE),
                                          lazy_eval(dots),
                                          params)))
    }
  }else{
    function(){
      unevalparams <- as.list(match.call())
      params <- lapply(unevalparams[names(unevalparams) %in% parameters],
                       function(x){eval(x, parent.frame(n = 3))})
      Reduce(sum, do.call(llply, args = c(list(.data = data,
                                               .fun = density,
                                               log = FALSE),
                                          lazy_eval(dots),
                                          params)))
    }
  }
  formals(x) <- form
  x
}
