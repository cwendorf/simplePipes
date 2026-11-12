# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Tee Backward Pipe

### Alias

`%<T%`

### Description

Evaluates a function on the right-hand value for side effects, but returns the original right-hand value.

### Usage

```r
tee_backward(lhs, rhs)
lhs %<T% rhs
```

### Arguments

- **`lhs`**: A function to apply to `rhs` for side effects.
- **`rhs`**: An object to be passed to `lhs`.

### Value

Invisibly returns `rhs`.
