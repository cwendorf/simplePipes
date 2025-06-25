# simplePipes
## Simple Dot Pipes

#' @title Insert Dot into Expression
#' @description Modifies a call expression to insert the dot symbol (`.`) as the first argument, if not already present. 
#' This is used internally to support dot-based pipe semantics.
#' @param expr A language object (expression or call) to modify.
#' @return A modified call with `.` inserted as an argument where appropriate.
#' @noRd
insert_dot <- function(expr) {
  if (is.symbol(expr)) {
    expr <- as.call(c(expr, quote(`.`)))
  } else if (length(expr) == 1) {
    expr <- as.call(c(expr[[1]], quote(`.`)))
  } else if (all(sapply(expr[-1], `!=`, quote(`.`)))) {
    expr <- as.call(c(expr[[1]], quote(`.`), as.list(expr[-1])))
  }
  return(expr)
}

#' @title Dot Forward Pipe
#' @description Passes the left-hand value as `.` into the right-hand expression.
#' @param lhs An object to assign to `.`.
#' @param rhs An expression using `.`.
#' @return The result of evaluating `rhs` with `.` set to `lhs`.
#' @export
#' @aliases %.>%
dot_forward <- function(lhs, rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  rhs <- insert_dot(rhs)
  eval(rhs)
}

#' @export
"%.>%" <- dot_forward

#' @title Dot Backward Pipe
#' @description Passes the right-hand value as `.` into the left-hand expression.
#' @param lhs An expression using `.`.
#' @param rhs An object to assign to `.`.
#' @return The result of evaluating `lhs` with `.` set to `rhs`.
#' @export
#' @aliases %<.%
dot_backward <- function(lhs, rhs) {
  . <- eval(rhs)
  lhs <- substitute(lhs)
  lhs <- insert_dot(lhs)
  eval(lhs)
}

#' @export
"%<.%" <- dot_backward
