
## Simple Examples

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")


### Input Data

variable=c(1,2,6,8,9,15)
variable1=c(1,2,6,8,9,15)
variable2=c(4,3,5,6,4,10)
frame=data.frame(variable1,variable2)


### Basic Pipes

#### Forward Basic Pipe

mean(variable)
variable %>% mean

#### Backward Basic Pipe

mean(variable)
mean %<% variable

### Dot Pipes

#### Forward Dot Pipe

mean(variable,trim=.2)
variable %.>% mean(.,trim=.2)
variable %.>% mean(.,trim=.2) %.>% round(.,digits=1)

#### Backward Dot Pipe

mean(variable,trim=.2)
mean(.,trim=.2) %<.% variable
round(.,digits=1) %<.% mean(.,trim=.2) %<.% variable

### Tee Pipe

#### Forward Tee Pipe

plot(variable); mean(variable)
variable %T>% plot %>% mean

#### Backward Tee Pipe

plot(variable); mean(variable)
plot %<T% variable %>% mean

### Wye Pipes

#### Forward Wye Pipe

mean(variable); sd(variable)
variable %Y>% c(mean,sd)

#### Backward Wye Pipe

mean(variable); sd(variable)
c(mean,sd) %<Y% variable

### Exposition Pipes

#### Forward Exposition Pipe

frame %$>% mean(variable2)
frame %$>% variable2 %>% mean

#### Backward Exposition Pipe

mean(variable2) %<$% frame

### Compound Assignment Pipe

newvariable <- variable
newvariable %<>% mean
newvariable
