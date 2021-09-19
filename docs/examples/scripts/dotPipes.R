
## Dot Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

### Standard R Syntax

mean(variable,trim=.2)

### Forward Dot Pipe

variable %.>% mean(.,trim=.2)

### Backward Dot Pipe

mean(.,trim=.2) %<.% variable
