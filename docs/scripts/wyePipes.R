# simplePipes
## Wye Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1, 2, 6, 8, 9, 15)

### Standard R Syntax

mean(variable)
sd(variable)

### Forward Wye Pipe

variable %Y>% c(mean, sd)

### Backward Wye Pipe

c(mean, sd) %<Y% variable
