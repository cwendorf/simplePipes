# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Basic Backward Pipe

### Alias

`%<%`

### Description

Passes the result of the right-hand side expression as the first argument to the left-hand side function.

### Usage

```r
basic_backward(lhs, rhs)
lhs %<% rhs
```

### Arguments

- **`lhs`**: A function to apply to `rhs`.
- **`rhs`**: An object to be passed to the function.

### Value

The result of applying `lhs` to `rhs`.
