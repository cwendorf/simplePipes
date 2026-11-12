# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Wye Backward Pipe

### Alias

`%<Y%`

### Description

Applies a list of functions to a single input and returns a vector of results.

### Usage

```r
wye_backward(lhs, rhs)
lhs %<Y% rhs
```

### Arguments

- **`lhs`**: An expression evaluating to a list of functions.
- **`rhs`**: An expression evaluating to a single object.

### Value

A vector of results from applying each function in `lhs` to `rhs`.
