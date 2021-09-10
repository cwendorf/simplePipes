---
title: "Dot Pipes"
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
  %\VignetteIndexEntry{Dot Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Dot Pipes

### Input Data


```r
variable <- c(1,2,6,8,9,15)
```

### Forward Dot Pipe


```r
mean(variable,trim=.2)
```

```
## [1] 6.25
```

```r
variable %.>% mean(.,trim=.2)
```

```
## [1] 6.25
```

```r
variable %.>% mean(.,trim=.2) %.>% round(.,digits=1)
```

```
## [1] 6.2
```

### Backward Dot Pipe


```r
mean(variable,trim=.2)
```

```
## [1] 6.25
```

```r
mean(.,trim=.2) %<.% variable
```

```
## [1] 6.25
```

```r
round(.,digits=1) %<.% mean(.,trim=.2) %<.% variable
```

```
## [1] 6.2
```
