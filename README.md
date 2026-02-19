
# `simplePipes` 

## A Collection of Pipe Operators

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

`simplePipes` is a small R package that implements a variety of simple pipe operators. It has less error checking than major R packages (like `magrittr` or `dplyr`) but contains more varieties -- both forward and backward versions of basic, tee, wye, exposition, compound assignment, and dot pipes -- and introduces the concept of through pipes. It also implements syntax that is simpler than the R native forward pipe.

### Installation

This package is not currently on CRAN, but can be installed and loaded using these R commands:

``` r
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cwendorf/simplePipes")
library(simplePipes)
```

If you do not wish a full install, the latest functions can be made available using this R command:

```r
source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")
```

### Usage

The simplest pipes implement piping, but they assume that the piped values are the first and only arguments passed to the next command. They are useful for very simple analyses and are important for educational purposes, but may have limit application.

- [basicPipes](./docs/basicPipes.md): Basic pipes are used for chaining (rather than nesting) commands. They assume that the piped values are the first and only arguments passed to the next command.

- [teePipes](./docs/teePipes.md): Tee pipes also involve chaining commands but are used when an intermediate command produces output (such as a plot). The intermediate command also acts as a flow-through to a third command in the chain.

- [wyePipes](./docs/wyePipes.md): Wye pipes chain a first command to two (or more) subsequent commands simultaneously. They take the place of multiple pipes.

Data manipulation pipes are useful for data selection and asssignment. In particular, they are helpful for replacing common data manipulation tasks with infix operators.

- [expositionPipes](./docs/expositionPipes.md): Exposition pipes indicate a data set to be used for other commands (or pipes), replacing the need for a `with` command.

- [assignmentPipes](./docs/assignmentPipes.md): Compound assignment pipes both chain commands and redefine the objects in the chain.

The most functional and flexible pipes use a placeholder (the dot) to provide flexibility in where the piped information is used further in the chain. 

- [dotPipes](./docs/dotPipes.md): Simple dot pipes also chain commands but expand on basic pipes by allowing the piped values to be placed anywhere in the next command in the chain. They expand the functionality of both basic and wye pipes.

- [throughPipes](./docs/throughPipes.md): Through pipes chain a series of commands, allowing the first piped values to be used as input in multiple subsequent commands (rather than just the next command in the chain). They expand the functionality of tee pipes.

### Contact

- GitHub Issues: [https://github.com/cwendorf/simplePipes/issues](https://github.com/cwendorf/simplePipes/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://github.com/cwendorf](https://github.com/cwendorf)
 
### Citation

Wendorf, C. A. (2021). *simplePipes: A collection of pipe operators* [R Package]. [https://github.com/cwendorf/simplePipes](https://github.com/cwendorf/simplePipes)
