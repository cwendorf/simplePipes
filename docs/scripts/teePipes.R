# simplePipes
## Tee Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1, 2, 6, 8, 9, 15)
c(1, 2, 6, 8, 9, 15) -> variable

### Standard R Syntax

plot(variable)
mean(variable)

### Native Pipe

variable |> (\(x) { plot(x); x } )() |> mean()

### Forward Tee Pipe

variable %T>% plot %>% mean

### Backward Tee Pipe

plot %<T% variable %>% mean
