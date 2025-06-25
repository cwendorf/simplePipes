# simplePipes
## Tee Pipes

#' @title Tee Forward Pipe
#' @description Evaluates a function on the left-hand value for side effects, but returns the original left-hand value.
#' @param lhs An object to be passed to `rhs`.
#' @param rhs A function to apply to `lhs` for side effects.
#' @return Invisibly returns `lhs`.
#' @export
tee_forward <- "%T>%" <- function(lhs, rhs) {
  do.call(rhs, list(lhs))
  invisible(lhs)
}

#' @title Tee Backward Pipe
#' @description Evaluates a function on the right-hand value for side effects, but returns the original right-hand value.
#' @param lhs A function to apply to `rhs` for side effects.
#' @param rhs An object to be passed to `lhs`.
#' @return Invisibly returns `rhs`.
#' @export
tee_backward <- "%<T%" <- function(lhs, rhs) {
  do.call(lhs, list(rhs))
  invisible(rhs)
}
