
# `simplePipes` 

## A Collection of Pipe Operators

[![minimal R version](https://img.shields.io/badge/R%3E%3D-3.6.2-6666ff.svg)](https://cran.r-project.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

### Overview

**simplePipes** is a small R package that implements a variety of simple pipe operators. It has less error checking than major R packages (like **magrittr** or **dplyr**) but contains more varieties -- both forward and backward versions of basic, tee, wye, exposition, compound assignment, and dot pipes -- and introduces the concept of through pipes. 

### Installation

This package is not currently on CRAN, but can be installed and loaded using these R commands:

``` r
if (!require(remotes)) install.packages("remotes")
remotes::install_github("cwendorf/simplePipes")
library(simplePipes)
```

If you do not wish a full install, the latest functions can be made available using these R commands:

```r
source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")
```

### Usage

The [Tutorials for simplePipes](./docs/README.md) provide explanations and examples of:

- The Simplest Pipes: Versions of basic, tee, and wye pipes 
- The Data Manipulation Pipes: Versions of exposition and compound assignment pipes
- The Functional Dot Pipes: Versions of simple dot and through pipes

### Contact Me

- GitHub Issues: [https://github.com/cwendorf/simplePipes/issues](https://github.com/cwendorf/simplePipes/issues) 
- Author Email: [cwendorf@uwsp.edu](mailto:cwendorf@uwsp.edu)
- Author Homepage: [https://github.com/cwendorf](https://github.com/cwendorf)
 
### Citation

Wendorf, C. A. (2021). *simplePipes: A collection of pipe operators* [R Package]. [https://github.com/cwendorf/simplePipes](https://github.com/cwendorf/simplePipes)
