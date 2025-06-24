
## Through Pipes

Through pipes chain a series of commands, allowing the first piped
values to be used as input in multiple subsequent commands (rather than
just the next command in the chain). They expand the functionality of
tee pipes.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Forward Through Pipe](#forward-through-pipe)

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

In standard R syntax, get the `mean` of the `variable` and then get the
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
for anonymous functions. With R 4.3, curly braces extend this
functionality.

Here, the anonymous function is used to create a placeholder (`x`) and
then print the `mean` of the `variable` and then get the `sd` of the
`variable`.

``` r
variable |> (\(.) { print(mean(.)); . } )() |> sd()
```

    ## [1] 6.833333

    ## [1] 5.115336

### Forward Through Pipe

Using the forward through pipe, identify the `variable` and then get
both its `mean` and `sd`.

``` r
variable %.>>% mean(.) %.>>% sd(.)
```

    ## [1] 6.833333
    ## [1] 5.115336
