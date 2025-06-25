# simplePipes
## Basic Pipes

#' @title Basic Forward Pipe
#' @description Passes the result of the left-hand side expression as the first argument to the right-hand side function.
#' @param lhs An object to be passed to the function.
#' @param rhs A function to apply to `lhs`.
#' @return The result of applying `rhs` to `lhs`.
#' @export
basic_forward <- "%>%" <- function(lhs, rhs) {
  do.call(rhs, list(lhs))
}

#' @title Basic Backward Pipe
#' @description Passes the result of the right-hand side expression as the first argument to the left-hand side function.
#' @param lhs A function to apply to `rhs`.
#' @param rhs An object to be passed to the function.
#' @return The result of applying `lhs` to `rhs`.
#' @export
basic_backward <- "%<%" <- function(lhs, rhs) {
  do.call(lhs, list(rhs))
}
