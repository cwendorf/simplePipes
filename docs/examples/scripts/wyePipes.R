
## Wye Pipes

source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")

### Input Data

variable <- c(1,2,6,8,9,15)

#### Forward Wye Pipe

mean(variable); sd(variable)
variable %Y>% c(mean,sd)

#### Backward Wye Pipe

mean(variable); sd(variable)
c(mean,sd) %<Y% variable
