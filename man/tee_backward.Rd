% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/teePipes.R
\name{tee_backward}
\alias{tee_backward}
\alias{\%<T\%}
\title{Tee Backward Pipe}
\usage{
tee_backward(lhs, rhs)
}
\arguments{
\item{lhs}{A function to apply to \code{rhs} for side effects.}

\item{rhs}{An object to be passed to \code{lhs}.}
}
\value{
Invisibly returns \code{rhs}.
}
\description{
Evaluates a function on the right-hand value for side effects, but returns the original right-hand value.
}
