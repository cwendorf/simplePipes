---
title: "Assignment Pipes"
author: "Craig A. Wendorf"
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 4
    collapse: true
    theme: cerulean
    highlight: tango
    keep_md: TRUE
vignette: >
  %\VignetteIndexEntry{Assignment Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Assignment Pipes

### Input Data


```r
variable <- c(1,2,6,8,9,15)
```

### Compound Assignment Pipe


```r
newvariable <- variable
newvariable %<>% mean
newvariable
```

```
## [1] 6.833333
```
