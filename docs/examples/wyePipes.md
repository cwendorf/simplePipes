
## Wye Pipes

### Input Data

First, name a `variable` and assign an array of values back to it.


```r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable` and also get the `sd` of the `variable`.


```r
mean(variable); sd(variable)
```

```
## [1] 6.833333
```

```
## [1] 5.115336
```

### Forward Wye Pipe

Using the forward wye pipe, identify the `variable` and then get both its `mean` and `sd`.


```r
variable %Y>% c(mean,sd)
```

```
## [1] 6.833333 5.115336
```

### Backward Wye Pipe

Using the backward wye pipe, get both the `mean` and `sd` of the `variable`.


```r
c(mean,sd) %<Y% variable
```

```
## [1] 6.833333 5.115336
```
