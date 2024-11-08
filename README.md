
<!-- README.md is generated from README.Rmd. Please edit that file -->

# resampledata

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/rudeboybert/resampledata.png?branch=master)](https://travis-ci.org/rudeboybert/resampledata)
[![R build
status](https://github.com/rudeboybert/resampledata/workflows/R-CMD-check/badge.svg)](https://github.com/rudeboybert/resampledata/actions)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/resampledata)](http://cran.r-project.org/package=resampledata)
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/resampledata)](http://www.r-pkg.org/pkg/resampledata)

<!-- badges: end -->

R package of data sets used in [Mathematical Statistics with Resampling
in R](https://sites.google.com/site/chiharahesterberg/) by Laura Chihara
and Tim Hesterberg.

| First Edition (2011)                                        | Second Edition (2018)                                       |
|-------------------------------------------------------------|-------------------------------------------------------------|
| <img src="man/figures/ed1.png" alt="Drawing" width="100%"/> | <img src="man/figures/ed2.png" alt="Drawing" width="100%"/> |

## Installation

Get the released version from CRAN:

``` r
install.packages("resampledata")
```

Or the development version from GitHub:

``` r
# If you haven't installed devtools yet, do so:
# install.packages("devtools")
devtools::install_github("rudeboybert/resampledata")
```

## Data Sets

To see a list of all data sets, type:

``` r
data(package = "resampledata")
```

To load a particular data set, `FlightDelays` for example, type:

``` r
data(FlightDelays)
```

Note the `Bangladesh` data is provided solely for illustrative purposes
and to enable statistical analysis. Full data are available from the
British Geological Survey web site
<https://www2.bgs.ac.uk/groundwater/health/arsenic/Bangladesh/home.html>
