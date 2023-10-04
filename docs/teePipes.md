## Tee Pipes

Tee pipes also involve chaining commands but are used when an intermediate command produces output (such as a plot). The intermediate command also acts as a flow-through to a third command in the chain.

### Input Data

First, name a `variable` and assign an array of values back to it.


```r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, `plot` the `variable` and then get the `mean` of the `variable`.


```r
plot(variable); mean(variable)
```

![](figures/Standard-Plot-1.png)<!-- -->

```
## [1] 6.833333
```

### Forward Tee Pipe

Using the forward tee pipe (and chaining in a basic pipe), identify the `variable` and then `plot` it and get its `mean`.


```r
variable %T>% plot %>% mean
```

![](figures/Forward-Tee-Plot-1.png)<!-- -->

```
## [1] 6.833333
```

### Backward Tee Pipe

Using the backward tee pipe (and chaining in a basic pipe), `plot` the `variable` and then get its `mean`.


```r
plot %<T% variable %>% mean
```

![](figures/Backward-Tee-Plot-1.png)<!-- -->

```
## [1] 6.833333
```
