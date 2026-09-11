
# RandQuad

[![R-CMD-check.yaml](https://github.com/Morty486/RandQuad/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Morty486/RandQuad/actions/workflows/R-CMD-check.yaml)

`RandQuad` is an R package for generating random variables from a
quadratic probability density function (pdf).


## Installation

run this command

``` r
devtools::install_github("Morty486/RandQuad")
```

## Example


``` r
library(RandQuad)
set.seed(123)
x <- rquad(1000, theta = 2)
head(x)
```

``` r
dquad(0.5, theta = 2)
pquad(0.5, theta = 2)

set.seed(100)
x <- rquad(10000, theta = 2)
check_rquad()

efficiency_study(c(10^3, 10^4), theta = 2, B = 4)

```

``` r
set.seed(123)
x1 <- rquad(10, 2)
set.seed(123)
x2 <- rquad(10, 2)
identical(x1, x2)
```

