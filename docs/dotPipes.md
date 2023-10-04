## Dot Pipes

Simple dot pipes also chain commands but expand on basic pipes by allowing the piped values to be placed anywhere in the next command in the chain.

### Input Data

First, name a `variable` and assign an array of values back to it.


```r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable` (while specifying additional commands) and also get the `sd` of the `variable`.


```r
mean(variable,trim=.2); sd(variable)
```

```
## [1] 6.25
```

```
## [1] 5.115336
```

### Forward Dot Pipe

Using the forward dot pipe, identify the `variable` and get its `mean` (while also specifying additional commands).


```r
variable %.>% mean(.,trim=.2)
```

```
## [1] 6.25
```

Going a step further, identify the `variable` and then get both its `mean` and `sd` (while also specifying additional commands).


```r
variable %.>% c(mean(.,trim=.2),sd(.))
```

```
## [1] 6.250000 5.115336
```

### Backward Dot Pipe

Using the backward dot pipe, get the `mean`  of the `variable` (while also specifying additional commands).


```r
mean(.,trim=.2) %<.% variable
```

```
## [1] 6.25
```

Going a step further, get both the `mean` and `sd` of the `variable` (while also specifying additional commands).


```r
c(mean(.,trim=.2),sd(.)) %<.% variable
```

```
## [1] 6.250000 5.115336
```
