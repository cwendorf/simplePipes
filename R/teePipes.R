# simplePipes
## Tee Pipes

#' @title Tee Forward Pipe
#' @description Evaluates a function on the left-hand value for side effects, but returns the original left-hand value.
#' @param lhs An object to be passed to `rhs`.
#' @param rhs A function to apply to `lhs` for side effects.
#' @return Invisibly returns `lhs`.
#' @export
#' @aliases %T>%
tee_forward <- function(lhs, rhs) {
  do.call(rhs, list(lhs))
  invisible(lhs)
}

#' @export
"%T>%" <- tee_forward

#' @title Tee Backward Pipe
#' @description Evaluates a function on the right-hand value for side effects, but returns the original right-hand value.
#' @param lhs A function to apply to `rhs` for side effects.
#' @param rhs An object to be passed to `lhs`.
#' @return Invisibly returns `rhs`.
#' @export
#' @aliases %<T%
tee_backward <- function(lhs, rhs) {
  do.call(lhs, list(rhs))
  invisible(rhs)
}

#' @export
"%<T%" <- tee_backward
