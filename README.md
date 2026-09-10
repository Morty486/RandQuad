
# RandQuad

`RandQuad` is an R package for generating random variables from a
quadratic probability density function (pdf).


## Installation

run this command

``` r
devtools::install_github("Morty486/RandQuad")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(RandQuad)
set.seed(123)
x <- rquad(1000, theta = 2)
head(x)
```

