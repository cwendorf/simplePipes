---
title: "Exposition Pipes"
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
  %\VignetteIndexEntry{Exposition Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Exposition Pipes

### Input Data


```r
variable1 <- c(1,2,6,8,9,15)
variable2 <- c(4,3,5,6,4,10)
frame <- data.frame(variable1,variable2)
```

### Forward Exposition Pipe


```r
with(frame,mean(variable2))
```

```
## [1] 5.333333
```

```r
frame %$>% mean(variable2)
```

```
## [1] 5.333333
```

```r
frame %$>% variable2 %>% mean
```

```
## [1] 5.333333
```

### Backward Exposition Pipe


```r
with(frame,mean(variable2))
```

```
## [1] 5.333333
```

```r
mean(variable2) %<$% frame
```

```
## [1] 5.333333
```

```r
mean %<% variable2 %<$% frame
```

```
## [1] 5.333333
```
