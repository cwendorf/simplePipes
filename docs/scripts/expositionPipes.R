# simplePipes
## Exposition Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable1 <- c(1, 2, 6, 8, 9, 15)
variable2 <- c(4, 3, 5, 6, 4, 10)
frame <- data.frame(variable1, variable2)

c(1, 2, 6, 8, 9, 15) -> variable1
c(4, 3, 5, 6, 4, 10) -> variable2
data.frame(variable1, variable2) -> frame

### Standard R Syntax

with(frame, mean(variable2))

### Native Pipe

frame |> (\(x) with(x, mean(variable2)))()
frame |> (\(x) with(x, { variable2 |> mean() } ))()

### Forward Exposition Pipe

frame %$>% mean(variable2)
frame %$>% variable2 %>% mean

### Backward Exposition Pipe

mean(variable2) %<$% frame
mean %<% variable2 %<$% frame
