#' Likelihood Function
#'
#' @param data vector of data points
#' @param ... other options
#' @param density
#' @param log
#'
#' @importFrom lazyeval lazy_dots
#' @export
#'
likelihood <- function(data, density, ..., log = TRUE){
  dots <- lazy_dots(...)
  if(log == TRUE){
    x <- function(){

    }
    formals(x) <- alist(formals(dnorm))
  }else{

  }
}
