# simplePipes
## Wye Pipes

#' @title Wye Forward Pipe
#' @description Applies a list of functions to a single input and returns a vector of results.
#' @param lhs An expression evaluating to a single object.
#' @param rhs An expression evaluating to a list of functions.
#' @return A vector of results from applying each function in `rhs` to `lhs`.
wye_forward <- "%Y>%" <- function(lhs, rhs) {
  data <- eval(lhs)
  arglist <- eval(rhs)
  results <- sapply(arglist, function(FUN, data) FUN(data), data)
  return(results)
}

#' @title Wye Backward Pipe
#' @description Applies a list of functions to a single input and returns a vector of results.
#' @param lhs An expression evaluating to a list of functions.
#' @param rhs An expression evaluating to a single object.
#' @return A vector of results from applying each function in `lhs` to `rhs`.
wye_backward <- "%<Y%" <- function(lhs, rhs) {
  data <- eval(rhs)
  arglist <- eval(lhs)
  results <- sapply(arglist, function(FUN, data) FUN(data), data)
  return(results)
}
