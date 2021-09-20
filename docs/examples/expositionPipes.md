
## Exposition Pipes

### Input Data

First, name a few variables and assign arrays of values back them. Then create a `frame` that holds both variables.


```r
variable1 <- c(1,2,6,8,9,15)
variable2 <- c(4,3,5,6,4,10)
frame <- data.frame(variable1,variable2)
```

### Standard R Syntax

In standard R syntax, use `with` to select the data `frame`, then get the `mean` of `variable2`.


```r
with(frame,mean(variable2))
```

```
## [1] 5.333333
```

### Forward Exposition Pipe

Using the forward exposition pipe, select the data `frame`, then get the `mean` of `variable2`.


```r
frame %$>% mean(variable2)
```

```
## [1] 5.333333
```

Going a step further by chaining in a basic pipe, select the data `frame`, then identify `variable2` and get its `mean`.


```r
frame %$>% variable2 %>% mean
```

```
## [1] 5.333333
```

### Backward Exposition Pipe

Using the backward exposition pipe, get the `mean` of `variable2` using the data `frame`. 


```r
mean(variable2) %<$% frame
```

```
## [1] 5.333333
```

Going a step further by chaining in a basic pipe, get the `mean` of `variable2` using the data `frame`.


```r
mean %<% variable2 %<$% frame
```

```
## [1] 5.333333
```
