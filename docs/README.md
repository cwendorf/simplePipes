# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Introduction

Different workflows may need more than a simple forward pipe, especially when preserving values, evaluating expressions, or reassigning results. `simplePipes` adds lightweight forward and backward operators for these piping patterns.

- [Overview](#overview)
- [Resources](#resources)

---

### Overview

The package provides forward and backward versions of basic, tee, wye, exposition, compound assignment, and dot pipes, and adds a through pipe for reusing an original value in a chain. It offers less error checking than major packages such as `magrittr` or `dplyr`, but includes operator types and syntax not available in R's native forward pipe.

### Resources

- [Reference](./man/README.md): Documentation for all exported pipe operators, including usage, arguments, and return values.
- [Articles](./vignettes/README.md): Examples demonstrating how to use the package.
