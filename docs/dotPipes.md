
## Dot Pipes

Simple dot pipes also chain commands but expand on basic pipes by
allowing the piped values to be placed anywhere in the next command in
the chain. They expand the functionality of both basic and wye pipes.

- [Input Data](#input-data)
- [Standard R Syntax](#standard-r-syntax)
- [Native Pipe](#native-pipe)
- [Forward Dot Pipe](#forward-dot-pipe)
- [Backward Dot Pipe](#backward-dot-pipe)

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

In standard R syntax, get the `mean` of the `variable` (while specifying
additional arguments).

``` r
mean(variable, trim = .2)
```

    ## [1] 6.25

Going a step further, get both the `mean` and the `sd` of the `variable`
(while specifying additional arguments).

``` r
c(mean(variable, trim = .2), sd(variable))
```

    ## [1] 6.250000 5.115336

### Native Pipe

After version 4.1, R includes a native forward pipe, a limited use
placeholder, and shorthand syntax for anonymous functions.

Because the native pipe automatically pipes `variable` to the first
argument, getting the trimmed `mean` is straightfoward.

``` r
variable |> mean(trim = .2)
```

    ## [1] 6.25

More formally, the native placeholder (`_`) can be used with any named
argument.

``` r
variable |> mean(x = _, trim = .2)
```

    ## [1] 6.25

However, the native placeholder cannot be piped to mutiple functions or
arguments. Here, the anonymous function is used to create a dot
placeholder (`.`) and then to pipe into multiple functions, like `mean`
and `sd`.

``` r
variable |> (\(.) c(mean(., trim = .2), sd(.)))()
```

    ## [1] 6.250000 5.115336

### Forward Dot Pipe

Using the forward dot pipe, identify the `variable` and get its `mean`
(while also specifying additional arguments).

``` r
variable %.>% mean(., trim = .2)
```

    ## [1] 6.25

Going a step further, identify the `variable` and then get both its
`mean` and `sd` (while also specifying additional arguments).

``` r
variable %.>% { c(mean(., trim = .2), sd(.)) }
```

    ## [1] 6.250000 5.115336

### Backward Dot Pipe

Using the backward dot pipe, get the `mean` of the `variable` (while
also specifying additional arguments).

``` r
mean(., trim = .2) %<.% variable
```

    ## [1] 6.25

Going a step further, get both the `mean` and `sd` of the `variable`
(while also specifying additional arguments).

``` r
{ c(mean(., trim = .2), sd(.)) } %<.% variable
```

    ## [1] 6.250000 5.115336
