---
title: "Basic Pipes"
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
  %\VignetteIndexEntry{Basic Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Basic Pipes

### Input Data


```r
variable <- c(1,2,6,8,9,15)
```

### Forward Basic Pipe


```r
mean(variable)
```

```
## [1] 6.833333
```

```r
variable %>% mean
```

```
## [1] 6.833333
```

### Backward Basic Pipe


```r
mean(variable)
```

```
## [1] 6.833333
```

```r
mean %<% variable
```

```
## [1] 6.833333
```
