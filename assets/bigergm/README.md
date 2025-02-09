
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/bigergm)](https://CRAN.R-project.org/package=bigergm)
<!-- badges: end -->

# bigergm </a>

A toolbox for analyzing and simulating large networks based on
hierarchical exponential-family random graph models (HERGMs).’bigergm’
implements the estimation for large networks efficiently building on the
‘lighthergm’ and ‘hergm’ packages. Moreover, the package contains tools
for simulating networks with local dependence to assess the
goodness-of-fit.

## Installation

Install the released version of usethis from CRAN:

``` r
install.packages("bigergm")
```

## Usage

See the [vignette](articles/bigergm.html) for a detailed introduction to
the package.

### Installing on Mac OS

Some Mac OS users may encounter the following error when installing
`bigergm`:

    clang: error: unsupported option '-fopenmp'

This is because **clang** for Mac OS may not support the **-fopenmp**
flag by default.

To fix this, install [llvm](https://formulae.brew.sh/formula/llvm) from
`brew`:

    brew install llvm

Then, edit the **~/.R/Makevars** file in your machine (if it does not
exist, create it) including the following line:

    CXX11 = /usr/local/opt/llvm/bin/clang

This indicates R that it should use the right `clang` for compilation.
After doing this you should be able to install the library without
problems using any of the methods above.

If you still have issues installing `bigergm` let us know.
