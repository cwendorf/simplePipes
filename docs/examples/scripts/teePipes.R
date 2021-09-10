
## Tee Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

#### Forward Tee Pipe

plot(variable); mean(variable)
variable %T>% plot %>% mean

#### Backward Tee Pipe

plot(variable); mean(variable)
plot %<T% variable %>% mean

mean %<% plot %<T% variable
