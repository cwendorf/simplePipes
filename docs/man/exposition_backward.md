# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Exposition Backward Pipe

### Alias

`%<$%`

### Description

Evaluates a data object within the environment of an expression.

### Usage

```r
exposition_backward(lhs, rhs)
lhs %<$% rhs
```

### Arguments

- **`lhs`**: An expression to evaluate within `rhs`.
- **`rhs`**: A data object (e.g., a data frame).

### Value

The result of evaluating `lhs` within `rhs`.
