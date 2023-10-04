# simplePipes
## Exposition Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable1 <- c(1,2,6,8,9,15)
variable2 <- c(4,3,5,6,4,10)
frame <- data.frame(variable1,variable2)

### Standard R Syntax

with(frame,mean(variable2))

### Forward Exposition Pipe

frame %$>% mean(variable2)
frame %$>% variable2 %>% mean

### Backward Exposition Pipe

mean(variable2) %<$% frame
mean %<% variable2 %<$% frame
