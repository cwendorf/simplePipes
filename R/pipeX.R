# simplePipe
## Pipe Operators

### Simple Pipe

"%>%" <- function(lhs,rhs) do.call(rhs,list(lhs))

"%>%" <- function(lhs,rhs) {
  if(typeof(lhs)=="list") {do.call(rhs,lhs)}
  else {do.call(rhs,list(lhs))}
}

### Simple BackPipe

"%<%" <- function(lhs,rhs) do.call(lhs,list(rhs))

"%>%" <- function(lhs,rhs) {
  if(typeof(rhs)=="list") {do.call(lhs,rhs)}
  else {do.call(lhs,list(rhs))}
}

### Dot Pipe

"%.>%" <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  eval(rhs)
}

### Dot BackPipe

"%<.%" <- function(lhs,rhs) {
  . <- eval(rhs)
  lhs <- substitute(lhs)
  eval(lhs)
}

### Tee Pipe

"%T>%" <- function(lhs,rhs) {
  data <- eval(lhs)
  arglist <- eval(rhs)
  results <- sapply(arglist, function(FUN,data) FUN(data),data)
  return(results)
}

### Tee BackPipe

"%<T%" <- function(lhs,rhs) {
  data <- eval(rhs)
  arglist <- eval(lhs)
  results <- sapply(arglist, function(FUN,data) FUN(data),data)
  return(results)
}

### Exposition Pipe

"%$%" <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with,list(lhs,rhs))
}

"%$>%" <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with,list(lhs,rhs))
}

### Exposition BackPipe

"%<$%" <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  rhs <- substitute(rhs)
  do.call(with,list(rhs,lhs))
}