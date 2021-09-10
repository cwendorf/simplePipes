---
title: "Wye Pipes"
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
  %\VignetteIndexEntry{Wye Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Wye Pipes

### Input Data


```r
variable <- c(1,2,6,8,9,15)
```

### Forward Wye Pipe


```r
mean(variable); sd(variable)
```

```
## [1] 6.833333
```

```
## [1] 5.115336
```

```r
variable %Y>% c(mean,sd)
```

```
## [1] 6.833333 5.115336
```

### Backward Wye Pipe


```r
mean(variable); sd(variable)
```

```
## [1] 6.833333
```

```
## [1] 5.115336
```

```r
c(mean,sd) %<Y% variable
```

```
## [1] 6.833333 5.115336
```
