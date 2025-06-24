# simplePipes
## Basic Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1, 2, 6, 8, 9, 15)
c(1, 2, 6, 8, 9, 15) -> variable

### Standard R Syntax

mean(variable)

### Native Pipe

variable |> mean()

### Forward Basic Pipe

variable %>% mean

### Backward Basic Pipe

mean %<% variable
