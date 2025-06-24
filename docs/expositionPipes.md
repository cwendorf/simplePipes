
## Exposition Pipes

Exposition pipes indicate a data set to be used for other commands (or
pipes), replacing the need for a `with` command.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Forward Exposition Pipe](#forward-exposition-pipe)
- [Backward Exposition Pipe](#backward-exposition-pipe)

------------------------------------------------------------------------

### Input Data

First, name a few variables and assign arrays of values back them. Then
create a `frame` that holds both variables.

``` r
variable1 <- c(1, 2, 6, 8, 9, 15)
variable2 <- c(4, 3, 5, 6, 4, 10)
frame <- data.frame(variable1, variable2)
```

Though it’s not commonly demonstrated, R does permit forward assignment
of vales to a `variable`.

``` r
c(1, 2, 6, 8, 9, 15) -> variable
```

### Standard R Syntax

In standard R syntax, use `with` to select the data `frame`, then get
the `mean` of `variable2`.

``` r
with(frame, mean(variable2))
```

    ## [1] 5.333333

### Native Pipe

After version 4.1, R includes a native forward pipe and shorthand syntax
for anonymous functions. With R 4.3, curly braces extend this
functionality.

Here, the anonymous function is used to create a placeholder (`x`) and
then to pipe into the `with` command to get the `mean` of `variable2`.

``` r
frame |> (\(x) with(x, mean(variable2)))()
```

    ## [1] 5.333333

Taking it a step further, a pipe can be created within the anonymous
function from above to take `variable2` and get its `mean`.

``` r
frame |> (\(x) with(x, { variable2 |> mean() } ))()
```

    ## [1] 5.333333

### Forward Exposition Pipe

Using the forward exposition pipe, select the data `frame`, then get the
`mean` of `variable2`.

``` r
frame %$>% mean(variable2)
```

    ## [1] 5.333333

Going a step further by chaining in a basic pipe, select the data
`frame`, then identify `variable2` and get its `mean`.

``` r
frame %$>% variable2 %>% mean
```

    ## [1] 5.333333

### Backward Exposition Pipe

Using the backward exposition pipe, get the `mean` of `variable2` using
the data `frame`.

``` r
mean(variable2) %<$% frame
```

    ## [1] 5.333333

Going a step further by chaining in a basic pipe, get the `mean` of
`variable2` using the data `frame`.

``` r
mean %<% variable2 %<$% frame
```

    ## [1] 5.333333
