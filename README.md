
<!-- README.md is generated from README.Rmd. Please edit that file -->

# resampledata

[![Build
Status](https://travis-ci.org/rudeboybert/resampledata.png?branch=master)](https://travis-ci.org/rudeboybert/resampledata)
[![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/resampledata)](http://cran.r-project.org/package=resampledata)
[![CRAN RStudio mirror
downloads](http://cranlogs.r-pkg.org/badges/resampledata)](http://www.r-pkg.org/pkg/resampledata)

R package of data sets used in [Mathematical Statistics with Resampling
in R](https://sites.google.com/site/chiharahesterberg/) (1st Ed. 2011,
2nd Ed. 2018) by Laura Chihara and Tim Hesterberg.

<br>

<img src="textbook.jpg" alt="Drawing" style="width: 100px;"/>

<br>

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
<http://www.bgs.ac.uk/arsenic/bphase2/datadownload.htm>.
