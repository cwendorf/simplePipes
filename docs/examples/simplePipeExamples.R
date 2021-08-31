
## Simple Examples

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

### Tee Pipes

#### Forward Tee Pipe

mean(variable); sd(variable)
variable %T>% c(mean,sd)

#### Backward Tee Pipe

mean(variable); sd(variable)
c(mean,sd) %<T% variable

### Exposition Pipes

#### Forward Exposition Pipe

frame %$>% mean(variable2)

#### Backward Exposition Pipe

mean(variable2) %<$% frame
