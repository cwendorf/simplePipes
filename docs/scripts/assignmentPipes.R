# simplePipes
## Assignment Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

### Standard R Syntax

variable <- mean(variable)
variable

### Compound Assignment Pipe

variable %<>% mean
variable
