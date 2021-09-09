# `simplePipes`

## A Collection of Pipe Operators for R

### Overview

`simplePipes` is an R package that implements a variety of simple pipe operators. They have less error checking than pipes from major R packages (like `magrittr` or `dplyr`) but contain more varieties -- both forward and backward versions of basic, dot, tee, wye, exposition, and compound assignment pipes.

### Installation

This package is not currently on CRAN, but can be installed from GitHub:

``` r
install.packages("devtools")
devtools::install_github("cwendorf/simplePipes")
library(simplePipes)
```

If you do not wish a full install, the latest functions can be sourced directly from GitHub:

```r
source("http://raw.githubusercontent.com/cwendorf/simplePipes/main/source-simplePipes.R")
```

### Citation

Wendorf, C. A. (Ed.) (2021). _simplePipes: A collection of pipe operators for R_ [R Package]. [https://cwendorf.github.io/simplePipes](https://cwendorf.github.io/simplePipes)

