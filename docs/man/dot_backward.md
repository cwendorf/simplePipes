# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Dot Backward Pipe

### Alias

`%<.%`

### Description

Passes the right-hand value as `.` into the left-hand expression.

### Usage

```r
dot_backward(lhs, rhs)
lhs %<.% rhs
```

### Arguments

- **`lhs`**: An expression using `.`.
- **`rhs`**: An object to assign to `.`.

### Value

The result of evaluating `lhs` with `.` set to `rhs`.
