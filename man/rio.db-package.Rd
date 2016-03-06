\docType{package}
\name{rio.db}
\alias{rio.db}
\alias{rio.db-package}
\title{A Database Extension for rio}
\description{This package uses the extension mechanism of the rio package to enable import from and export to SQLite databases. The only functions to know are \code{\link[rio]{import}} and \code{\link[rio]{export}}.}
\examples{
if (require("rio")) {
  require("datasets")

  # export to a SQLite database
  export(mtcars, "example.sqlite", table = "mtcars")

  # import from a SQLite database
  import("example.sqlite", table = "mtcars")
  
  unlink("example.sqlite")
}
}
