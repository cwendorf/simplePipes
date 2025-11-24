# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Basic Pipes

Basic pipes are used for chaining (rather than nesting) commands. They
assume that the piped values are the first and only arguments passed to
the next command.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Forward Basic Pipe](#forward-basic-pipe)
- [Backward Basic Pipe](#backward-basic-pipe)

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

In standard R syntax, get the `mean` of the `variable`.

``` r
mean(variable)
```

    ## [1] 6.833333

### Native Pipe

After version 4.1, R includes a native forward pipe. Here, `variable` is
piped directly to get its `mean`.

``` r
variable |> mean()
```

    ## [1] 6.833333

### Forward Basic Pipe

Using the forward basic pipe, identify the `variable` and then get its
`mean`.

``` r
variable %>% mean
```

    ## [1] 6.833333

### Backward Basic Pipe

Using the backward basic pipe, get the `mean` of the `variable`.

``` r
mean %<% variable
```

    ## [1] 6.833333
