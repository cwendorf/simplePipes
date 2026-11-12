# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Wye Forward Pipe

### Alias

`%Y>%`

### Description

Applies a list of functions to a single input and returns a vector of results.

### Usage

```r
wye_forward(lhs, rhs)
lhs %Y>% rhs
```

### Arguments

- **`lhs`**: An expression evaluating to a single object.
- **`rhs`**: An expression evaluating to a list of functions.

### Value

A vector of results from applying each function in `rhs` to `lhs`.
