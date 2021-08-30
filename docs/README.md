# `simplePipes`

## A Collection Pipe Operators for R

### Overview

`simplePipes` is an R package that implements a variety of simple pipe operators. They provide basic functionality, but with less error checking than in major R packages (like `magrittr` or `dplyr`). `simplePipes` contains more varieties -- both forward and backward versions -- of basic pipes, dot pipes, exposition pipes, and tee pipes.

### Installation

This package is not currently on CRAN, but can be installed from GitHub:

``` r
install.packages("devtools")
devtools::install_github("cwendorf/simplePipes")
library(simplePipes)
```

If you do not wish a full install, the latest functions can be sourced directly from GitHub:

```r
source("http://raw.githubusercontent.com/cwendorf/DGB/main/source-simplePipes.R")
```

### Citation

Wendorf, C. A. (Ed.) (2021). _simplePipes: Simple pipe operators for R_ [R Package]. [https://cwendorf.github.io/simplePipes](https://cwendorf.github.io/simplePipes)

