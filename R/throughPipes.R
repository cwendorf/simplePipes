# simplePipes
## Through Pipe

#' @title Through Forward Pipe
#' @description Evaluates an expression using `.` and returns the original value invisibly after printing the result.
#' @param lhs An object to assign to `.`.
#' @param rhs An expression using `.`.
#' @return Invisibly returns `lhs` after printing the result of `rhs`.
#' @export
through_forward <- "%.>>%" <- function(lhs, rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  rhs <- insert_dot(rhs)
  print(eval(rhs))
  invisible(.)
}
