# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Wye Pipes

Wye pipes chain a first command to two (or more) subsequent commands
simultaneously. They take the place of multiple pipes.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Forward Wye Pipe](#forward-wye-pipe)
- [Backward Wye Pipe](#backward-wye-pipe)

------------------------------------------------------------------------

### Input Data

First, name a `variable` and assign an array of values back to it.

``` r
variable <- c(1, 2, 6, 8, 9, 15)
```

Though it’s not commonly demonstrated, R does permit forward assignment
of vales to a `variable`.

``` r
c(1, 2, 6, 8, 9, 15) -> variable
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable` and also get the
`sd` of the `variable`.

``` r
mean(variable)
```

    ## [1] 6.833333

``` r
sd(variable)
```

    ## [1] 5.115336

### Native Pipe

After version 4.1, R includes a native forward pipe and shorthand syntax
for anonymous functions.

Here, the anonymous function is used to create a dot placeholder (`x`)
and then to pipe into multiple functions, like `mean` and `sd`.

``` r
variable |> (\(x) c(mean(x), sd(x)))()
```

    ## [1] 6.833333 5.115336

### Forward Wye Pipe

Using the forward wye pipe, identify the `variable` and then get both
its `mean` and `sd`.

``` r
variable %Y>% c(mean, sd)
```

    ## [1] 6.833333 5.115336

### Backward Wye Pipe

Using the backward wye pipe, get both the `mean` and `sd` of the
`variable`.

``` r
c(mean, sd) %<Y% variable
```

    ## [1] 6.833333 5.115336
