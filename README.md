# resampledata

[![Build Status](https://travis-ci.org/rudeboybert/resampledata.png?branch=master)](https://travis-ci.org/rudeboybert/resampledata)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/resampledata)](http://cran.r-project.org/package=resampledata)

R package of datasets used in [Mathematical Statistics with Resampling in R](https://sites.google.com/site/chiharahesterberg/) (2011) by Laura Chihara and Tim Hesterberg.

![alt text](textbook.jpg)

## Installation

Get the released version from CRAN:

```R
install.packages("resampledata")
```

Or the development version from GitHub:

```R
# install.packages("devtools")
devtools::install_github("rudeboybert/resampledata")
```

## Datasets

To see a list of all datasets:

```R
data(package = "resampledata")
```

Note the following datasets were not included due to sharing restrictions and 
can only be accessed on the [textbook's
webpage](https://sites.google.com/site/chiharahesterberg/): `Bangladesh`,
`GSS2002`, `GSS2006`, and `Volleyball2009`.
