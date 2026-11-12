# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Tee Forward Pipe

### Alias

`%T>%`

### Description

Evaluates a function on the left-hand value for side effects, but returns the original left-hand value.

### Usage

```r
tee_forward(lhs, rhs)
lhs %T>% rhs
```

### Arguments

- **`lhs`**: An object to be passed to `rhs`.
- **`rhs`**: A function to apply to `lhs` for side effects.

### Value

Invisibly returns `lhs`.
