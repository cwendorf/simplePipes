---
title: "Tee Pipes"
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
  %\VignetteIndexEntry{Tee Pipes}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---





## Tee Pipes

### Input Data


```r
variable <- c(1,2,6,8,9,15)
```

### Forward Tee Pipe


```r
plot(variable); mean(variable)
```

![](figures/Forward-Tee-Plot-1.png)<!-- -->

```
## [1] 6.833333
```

```r
variable %T>% plot %>% mean
```

![](figures/Forward-Tee-Plot-2.png)<!-- -->

```
## [1] 6.833333
```

### Backward Tee Pipe


```r
plot(variable); mean(variable)
```

![](figures/Backward-Tee-Plot-1.png)<!-- -->

```
## [1] 6.833333
```

```r
plot %<T% variable %>% mean
```

![](figures/Backward-Tee-Plot-2.png)<!-- -->

```
## [1] 6.833333
```
