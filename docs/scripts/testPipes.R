# simplePipes
## New and Expanded Versions of the Pipes
## Test cases and examples are included

### Import Existing Pipes and Set Data

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

variable <- c(1,2,6,8,9,15)

variable %>% mean
variable %Y>% c(mean,sd)

variable %.>% mean(.)
variable %.>% c(mean(.),sd(.))
variable %.>% list(mean(.),sd(.))


### Expanded Dot Pipes

insert_dot <- function(expr) {
  if (is.symbol(expr)) {
    expr <- as.call(c(expr, quote(`.`))) }
  else if (length(expr) == 1) {
      expr <- as.call(c(expr[[1]], quote(`.`))) } 
  else if (all(sapply(expr[-1], `!=`, quote(`.`)))) {
    expr <- as.call(c(expr[[1]], quote(`.`), as.list(expr[-1]))) }
  expr
}

'%.>%' <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  rhs <- insert_dot(rhs)
  eval(rhs)
}

variable %.>% mean
variable %.>% mean(.)
variable %.>% plot
variable %.>% plot(.,col="red")

pi %.>% sin(.) %.>% cos(.)

#fails these tests
variable %.>% c(mean(.),sd(.))
variable %.>% list(mean(.),sd(.))


"%<.%" <- function(lhs,rhs) {
  . <- eval(rhs)
  lhs <- substitute(lhs)
  lhs<- insert_dot(lhs) 
  eval(lhs)
}

mean %<.% variable
mean() %<.% variable
mean(trim=.2) %<.% variable
mean(.,trim=.2) %<.% variable

### The Combined Pipe

`%C>%` <- forwardPipe <- function(lhs,rhs) {
  rhs <- substitute(rhs)
  rhs <- lapply(rhs,insert_dot)
  names(rhs) <- rhs
  if(length(rhs)==2) {rhs=rhs[-2]}
  if(length(rhs)>2) {rhs=rhs[-1]}  
  out <- lapply(rhs,eval,envir=list(.=lhs))
  if(length(out)==1) {out <- out[[1]]}
  out
}

variable %C>% mean
variable %C>% mean(.)
variable %C>% c(mean,sd)
variable %C>% list(mean(trim=.2),sd)
variable %C>% list(mean(.,trim=.2),sd(.))
variable %C>% c(plot,mean)

variable %C>% plot
variable %C>% plot(.,col="red")


forwardPipe(variable,mean())
forwardPipe(variable,mean(.))
forwardPipe(variable,c(mean(trim=.2),sd))

forwardPipe(variable,plot(.,col="red"))


`%<C%` <- reversePipe <- function(lhs,rhs) {
  lhs <- substitute(lhs)
  lhs <- lapply(lhs,insert_dot)
  names(lhs) <- lhs
  if(length(lhs)==2) {lhs=lhs[-2]}
  if(length(lhs)>2) {lhs=lhs[-1]}  
  out <- lapply(lhs,eval,envir=list(.=rhs))
  if(length(out)==1) {out <- out[[1]]}
  out
}

mean %<C% variable
mean(.) %<C% variable
c(mean,sd) %<C% variable
list(mean(trim=.2),sd(.)) %<C% variable
c(mean(.,trim=.2),sd(.)) %<C% variable
c(plot,mean) %<C% variable

reversePipe(mean,variable)
reversePipe(mean(.),variable)
reversePipe(c(mean(trim=.2),sd),variable)

has_tilde <- function(expr) {
  is.call(expr) && identical(expr[[1]], quote(`~`))
}

'%T>%' <- function(lhs,rhs) {
  . <- eval(lhs)
  rhs <- substitute(rhs)
  if (has_tilde(rhs)) {
    rhs <- rhs[[-1]]
    invis=TRUE}
  else {invis=FALSE}
  rhs <- insert_dot(rhs)
  if(invis) {
    rhs <- eval(rhs)
    invisible(lhs)}
  else {eval(rhs)}
}

variable %T>% mean 
variable %T>% mean()
variable %T>% ~ mean
variable %T>% ~ mean()



`%N>%` <- newPipe <- function(lhs,rhs) {
  if(!is.list(rhs)) {
    . <- eval(lhs)
    rhs <- substitute(rhs)
    rhs <- insert_dot(rhs)
    eval(rhs)}
  else {
    rhs <- substitute(rhs)
    rhs <- lapply(rhs,insert_dot)
    names(rhs) <- rhs
    rhs <- rhs[-1]
    lapply(rhs,eval)
  }
}

variable %N>% mean
variable %N>% mean(.)
variable %N>% list(mean(.,trim=.2),sd(.))
variable %N>% list(mean(trim=.2),sd(.))

variable %N>% plot
variable %N>% plot(.,col="red")

pi %N>% sin %N>% cos(.)

newPipe(variable,mean)
newPipe(variable,mean(.,trim=.2))
newPipe(variable,plot(.))
