# simplePipes
## A Collection of Pipe Operators for R

### Basic Pipes

"%>%" <- function(lhs,rhs) {
  if(typeof(lhs)=="list") {do.call(rhs,lhs)}
  else {do.call(rhs,list(lhs))}
}

"%<%" <- function(lhs,rhs) {
  if(typeof(rhs)=="list") {do.call(lhs,rhs)}
  else {do.call(lhs,list(rhs))}
}

### Dot Pipes

"%.>%" <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  eval(rhs)
}

"%<.%" <- function(lhs,rhs) {
  . <- eval(rhs)
  lhs <- substitute(lhs)
  eval(lhs)
}

### Tee Pipes

"%T>%" <- function(lhs,rhs) {
  do.call(rhs,list(lhs))
  invisible(lhs)
}

"%<T%" <- function(lhs,rhs) {
  do.call(lhs,list(rhs))
  invisible(rhs)
}

### Wye Pipes

"%Y>%" <- function(lhs,rhs) {
  data <- eval(lhs)
  arglist <- eval(rhs)
  results <- sapply(arglist, function(FUN,data) FUN(data),data)
  return(results)
}

"%<Y%" <- function(lhs,rhs) {
  data <- eval(rhs)
  arglist <- eval(lhs)
  results <- sapply(arglist, function(FUN,data) FUN(data),data)
  return(results)
}

### Exposition Pipes

"%$>%" <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with,list(lhs,rhs))
}

"%<$%" <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with,list(rhs,lhs))
}

### Compound Assignment Pipe

"%<>%" <- function(lhs,rhs) {
  x=do.call(rhs,list(lhs))
  name = substitute(lhs)
  assign(as.character(name),x,envir=.GlobalEnv)
}
