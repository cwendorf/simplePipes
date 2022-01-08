
## Dot Pipes

Dot pipes also chain commands but expand on basic pipes by allowing the piped values to be placed anywhere in the next command.

### Input Data

First, name a `variable` and assign an array of values back to it.


```r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable` (while also specifying additional commands).


```r
mean(variable,trim=.2)
```

```
## [1] 6.25
```

### Forward Dot Pipe

Using the forward dot pipe, identify the `variable` and then get its `mean` (while also specifying additional commands).


```r
variable %.>% mean(.,trim=.2)
```

```
## [1] 6.25
```

### Backward Dot Pipe

Using the backward dot pipe, get the `mean` of the `variable` (while also specifying additional commands).


```r
mean(.,trim=.2) %<.% variable
```

```
## [1] 6.25
```
