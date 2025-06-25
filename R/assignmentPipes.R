# simplePipes
## Compound Assignment Pipe

#' @title Compound Assignment Pipe
#' @description Updates a variable by piping it through a function and reassigning the result.
#' @param lhs A variable name.
#' @param rhs A function to apply to `lhs`.
#' @return The result assigned back to `lhs` in the global environment.
#' @export
#' @aliases %<>%
compound_assignment <- function(lhs, rhs) {
  x <- do.call(rhs, list(lhs))
  name <- substitute(lhs)
  assign(as.character(name), x, envir = .GlobalEnv)
}

#' @export
"%<>%" <- compound_assignment
