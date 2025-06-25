# simplePipes
## Exposition Pipes

#' @title Exposition Forward Pipe
#' @description Evaluates an expression within the environment of a data object.
#' @param lhs A data object (e.g., a data frame).
#' @param rhs An expression to evaluate within `lhs`.
#' @return The result of evaluating `rhs` within `lhs`.
#' @export
#' @aliases %$>%
exposition_forward <- function(lhs, rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with, list(lhs, rhs))
}

#' @export
"%$>%" <- exposition_forward

#' @title Exposition Backward Pipe
#' @description Evaluates a data object within the environment of an expression.
#' @param lhs An expression to evaluate within `rhs`.
#' @param rhs A data object (e.g., a data frame).
#' @return The result of evaluating `lhs` within `rhs`.
#' @export
#' @aliases %<$%
exposition_backward <- function(lhs, rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with, list(rhs, lhs))
}

#' @export
"%<$%" <- exposition_backward
