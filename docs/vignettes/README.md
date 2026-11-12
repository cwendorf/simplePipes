# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Articles

This section contains articles for `simplePipes`. They explain how the package's operators support data flow, side effects, expression evaluation, and value reuse.

- [Simplest Pipes](#simplest-pipes)
- [Data Manipulation Pipes](#data-manipulation-pipes)
- [Placeholder Pipes](#placeholder-pipes)

---

### Simplest Pipes

The simplest pipes assume that the piped values are the first and only arguments passed to the next command. They are useful for simple analyses and educational purposes.

- [Basic Pipes](./basicPipes.md): Chain commands instead of nesting them.
- [Tee Pipes](./teePipes.md): Preserve a value through an intermediate command with side effects, such as plotting.
- [Wye Pipes](./wyePipes.md): Apply multiple subsequent commands to the same input.

### Data Manipulation Pipes

These pipes support data selection and assignment with infix operators.

- [Exposition Pipes](./expositionPipes.md): Evaluate expressions in the context of a data object.
- [Assignment Pipes](./assignmentPipes.md): Chain a function and assign the result back to the original variable.

### Placeholder Pipes

Placeholder pipes make it possible to use piped values flexibly in subsequent expressions.

- [Dot Pipes](./dotPipes.md): Place the piped value anywhere in the next expression.
- [Through Pipes](./throughPipes.md): Reuse the initial value in multiple subsequent expressions.
