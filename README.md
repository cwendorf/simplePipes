# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## A Collection of Pipe Operators

[![Minimal R Version](https://img.shields.io/badge/R%3E%3D-3.6.2-blue?style=for-the-badge)](https://cran.r-project.org/)
[![GitHub Release](https://img.shields.io/github/v/release/cwendorf/simplePipes?style=for-the-badge)](https://github.com/cwendorf/simplePipes/releases/latest)
[![Project Status](https://img.shields.io/badge/Status-Inactive-orange?style=for-the-badge)](https://www.repostatus.org/#inactive)

### Overview

`simplePipes` is a small R package that implements a variety of simple pipe operators. It has less error checking than major R packages (like `magrittr` or `dplyr`) but contains more varieties -- both forward and backward versions of basic, tee, wye, exposition, compound assignment, and dot pipes -- and introduces the concept of through pipes. It also implements syntax that is simpler than the R native forward pipe.

### Installation

This package is not currently available on CRAN. It can be installed directly from GitHub:

``` r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_github("cwendorf/simplePipes")
library(simplePipes)
```

If you prefer not to install the package, you can load the current functions directly:

```r
source("https://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")
```

### Usage

This package includes the following documentation:

- [Introduction](./docs/README.md): An overview of the different types of pipes.
- [Basic Pipes](./docs/basicPipes.md): Basic pipes are used for chaining (rather than nesting) commands.
- [Tee Pipes](./docs/teePipes.md): Tee pipes are used when an intermediate command produces output (such as a plot).
- [Wye Pipes](./docs/wyePipes.md): Wye pipes chain a first command to two (or more) subsequent commands simultaneously.
- [Exposition Pipes](./docs/expositionPipes.md): Exposition pipes indicate a data set to be used for other commands (or pipes).
- [Assignment Pipes](./docs/assignmentPipes.md): Compound assignment pipes redefine the objects in the chain.
- [Dot Pipes](./docs/dotPipes.md): Dot pipes by allow the piped values to be placed anywhere in the next command in the chain.
- [Through Pipes](./docs/throughPipes.md): Through pipes allow the piped values to be used in multiple subsequent commands.

### Citation

Wendorf, C. A. (2023). *simplePipes: A collection of pipe operators* [R Package]. [https://github.com/cwendorf/simplePipes](https://github.com/cwendorf/simplePipes)
