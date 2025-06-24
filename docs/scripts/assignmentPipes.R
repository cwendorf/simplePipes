# simplePipes
## Assignment Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1, 2, 6, 8, 9, 15)
c(1, 2, 6, 8, 9, 15) -> variable

### Standard R Syntax

variable <- c(1, 2, 6, 8, 9, 15)
variable <- mean(variable)
variable

### Native Pipe

c(1, 2, 6, 8, 9, 15) -> variable
variable |> mean() -> variable
variable

### Compound Assignment Pipe

c(1, 2, 6, 8, 9, 15) -> variable
variable %<>% mean
variable
