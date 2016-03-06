# rio: A Database Extension for 'rio' #

The aim of **rio** is to make data file I/O in R as easy as possible. **rio.db** expands this functionality by supporting import from and export to SQLite databases using the usual rio functions: `import()` and `export()`.

## Package Installation ##

The package is available on [CRAN](http://cran.r-project.org/web/packages/rio.db/) and can be installed directly in R using:

```R
install.packages("rio.db")
```

The latest development version on GitHub can be installed using **devtools**:

```R
if(!require("ghit")){
    install.packages("ghit")
}
ghit::install_github("leeper/rio.db")
```

[![CRAN Version](http://www.r-pkg.org/badges/version/rio.db)](http://cran.r-project.org/package=rio.db)
![Downloads](http://cranlogs.r-pkg.org/badges/rio.db)
[![Travis-CI Build Status](https://travis-ci.org/leeper/rio.db.png?branch=master)](https://travis-ci.org/leeper/rio.db)
[![codecov.io](http://codecov.io/github/leeper/rio.db/coverage.svg?branch=master)](http://codecov.io/github/leeper/rio.db?branch=master)

