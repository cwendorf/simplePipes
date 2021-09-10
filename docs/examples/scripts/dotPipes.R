
## Dot Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

### Forward Dot Pipe

mean(variable,trim=.2)
variable %.>% mean(.,trim=.2)
variable %.>% mean(.,trim=.2) %.>% round(.,digits=1)

.2 %.>% mean(variable,trim=.)

### Backward Dot Pipe

mean(variable,trim=.2)
mean(.,trim=.2) %<.% variable
round(.,digits=1) %<.% mean(.,trim=.2) %<.% variable
