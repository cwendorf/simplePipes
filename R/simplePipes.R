# simplePipes
## A Collection of Pipe Operators for R

### Basic Pipes

"%>%" <- function(lhs,rhs) {
  do.call(rhs,list(lhs))
}

"%<%" <- function(lhs,rhs) {
  do.call(lhs,list(rhs))
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
  x <- do.call(rhs,list(lhs))
  name <- substitute(lhs)
  assign(as.character(name),x,envir=.GlobalEnv)
}

### Simple Dot Pipes

insert_dot <- function(expr) {
  if (is.symbol(expr)) {expr <- as.call(c(expr, quote(`.`)))}
  else if (length(expr) == 1) {expr <- as.call(c(expr[[1]], quote(`.`)))} 
  else if (all(sapply(expr[-1], `!=`, quote(`.`)))) {expr <- as.call(c(expr[[1]], quote(`.`), as.list(expr[-1])))}
  return(expr)
}

'%.>%' <- forwardPipe <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  rhs <- insert_dot(rhs)
  eval(rhs)
}

"%<.%" <- backwardPipe <- function(lhs,rhs) {
  . <- eval(rhs)
  lhs <- substitute(lhs)
  lhs <- insert_dot(lhs) 
  eval(lhs)
}

### Through Dot Pipe

"%.>>%" <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  rhs <- insert_dot(rhs)
  print(eval(rhs))
  invisible(.)
}
