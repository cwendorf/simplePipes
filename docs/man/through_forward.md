# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Through Forward Pipe

### Alias

`%.>>%`

### Description

Evaluates an expression using `.` and returns the original value invisibly after printing the result.

### Usage

```r
through_forward(lhs, rhs)
lhs %.>>% rhs
```

### Arguments

- **`lhs`**: An object to assign to `.`.
- **`rhs`**: An expression using `.`.

### Value

Invisibly returns `lhs` after printing the result of `rhs`.
