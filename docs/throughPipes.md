
## Through Pipes

Through pipes chain a series of commands, allowing the first piped
values to be used as input in multiple subsequent commands (rather than
just the next command in the chain). They expand the functionality of
tee pipes.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Forward Through Pipe](#forward-through-pipe)

------------------------------------------------------------------------

### Input Data

First, name a `variable` and assign an array of values back to it.

``` r
variable <- c(1,2,6,8,9,15)
```

### Standard R Syntax

In standard R syntax, get the `mean` of the `variable` and then get the
`sd` of the `variable`.

``` r
mean(variable); sd(variable)
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
