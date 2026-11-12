# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Dot Forward Pipe

### Alias

`%.>%`

### Description

Passes the left-hand value as `.` into the right-hand expression.

### Usage

```r
dot_forward(lhs, rhs)
lhs %.>% rhs
```

### Arguments

- **`lhs`**: An object to assign to `.`.
- **`rhs`**: An expression using `.`.

### Value

The result of evaluating `rhs` with `.` set to `lhs`.
