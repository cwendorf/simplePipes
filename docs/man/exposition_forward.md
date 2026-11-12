# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Exposition Forward Pipe

### Alias

`%$>%`

### Description

Evaluates an expression within the environment of a data object.

### Usage

```r
exposition_forward(lhs, rhs)
lhs %$>% rhs
```

### Arguments

- **`lhs`**: A data object (e.g., a data frame).
- **`rhs`**: An expression to evaluate within `lhs`.

### Value

The result of evaluating `rhs` within `lhs`.
