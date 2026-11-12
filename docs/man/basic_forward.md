# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Basic Forward Pipe

### Alias

`%>%`

### Description

Passes the result of the left-hand side expression as the first argument to the right-hand side function.

### Usage

```r
basic_forward(lhs, rhs)
lhs %>% rhs
```

### Arguments

- **`lhs`**: An object to be passed to the function.
- **`rhs`**: A function to apply to `lhs`.

### Value

The result of applying `rhs` to `lhs`.
