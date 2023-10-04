# simplePipes
## Dot Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

### Standard R Syntax

mean(variable,trim=.2)
c(mean(variable,trim=.2), sd(variable))

### Forward Dot Pipe

variable %.>% mean(.,trim=.2)
variable %.>% {c(mean(.,trim=.2),sd(.))}

### Backward Dot Pipe

mean(.,trim=.2) %<.% variable
{c(mean(.,trim=.2),sd(.))} %<.% variable
