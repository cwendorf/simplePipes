
## Basic Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

### Forward Basic Pipe

mean(variable)
variable %>% mean

### Backward Basic Pipe

mean(variable)
mean %<% variable
