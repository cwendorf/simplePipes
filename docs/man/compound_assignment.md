# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Compound Assignment Pipe

### Alias

`%<>%`

### Description

Updates a variable by piping it through a function and reassigning the result.

### Usage

```r
compound_assignment(lhs, rhs)
lhs %<>% rhs
```

### Arguments

- **`lhs`**: A variable name.
- **`rhs`**: A function to apply to `lhs`.

### Value

The result assigned back to `lhs` in the global environment.
