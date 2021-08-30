# simplePipe
## Basic Examples

variable=c(1,2,6,8,9,15)
variable1=c(1,2,6,8,9,15)
variable2=c(4,3,5,6,4,10)
frame=data.frame(variable1,variable2)

### Simple Pipe

mean(variable)
variable %>% mean

### Simple BackPipe

mean(variable)
mean %<% variable

### Dot Pipe

mean(variable,trim=.2)
variable %.>% mean(.,trim=.2)
variable %.>% mean(.,trim=.2) %.>% round(.,digits=1)

### Dot BackPipe

mean(variable,trim=.2)
mean(.,trim=.2) %<.% variable
round(.,digits=1) %<.% mean(.,trim=.2) %<.% variable

### Tee Pipe

mean(variable); sd(variable)
variable %T>% c(mean,sd)

### Tee BackPipe

mean(variable); sd(variable)
c(mean,sd) %<T% variable

### Exposition Pipe

frame %$>% mean(variable2)

### Exposition BackPipe

mean(variable2) %<$% frame
