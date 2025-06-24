
## Assignment Pipes

Assignment pipes both chain commands and redefine the objects in the
chain.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Compound Assignment Pipe](#compound-assignment-pipe)

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

In standard R syntax, name a `variable` already in use, get the `mean`
of the `variable` and assign the value back to the variable. Display the
resulting value.

``` r
variable <- mean(variable)
variable
```

    ## [1] 6.833333

### Native Pipe

After version 4.1, R includes a native forward pipe. Here, `variable` is
piped forward to get its `mean` and then assigned.

``` r
c(1, 2, 6, 8, 9, 15) -> variable
variable |> mean() -> variable
variable
```

    ## [1] 6.833333

### Compound Assignment Pipe

Using the compound assignment pipe, identify a `variable` already in use
and assign its `mean` back to the variable. Display the resulting value.

``` r
variable %<>% mean
variable
```

    ## [1] 6.833333
