
## Basic Pipes

Basic pipes are used for chaining (rather than nesting) commands. They assume that the piped values are the first and only arguments passed to the next command.

### Input Data

First, name a `variable` and assign an array of values back to it.


```r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable`.


```r
mean(variable)
```

```
## [1] 6.833333
```

### Forward Basic Pipe

Using the forward basic pipe, identify the `variable` and then get its `mean`.


```r
variable %>% mean
```

```
## [1] 6.833333
```

### Backward Basic Pipe

Using the backward basic pipe, get the `mean` of the `variable`.


```r
mean %<% variable
```

```
## [1] 6.833333
```
