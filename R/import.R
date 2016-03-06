.import.rio_sqlite <- function(file, table, ...) {
    con <- DBI::dbConnect(RSQLite::SQLite(), file)
    on.exit(DBI::dbDisconnect(con))
    tabs <- DBI::dbListTables(con)
    if (!missing(table)) {
      if (is.numeric(table)) {
          x <- DBI::dbReadTable(con, tabs[grep(table, tabs)[1]], ...)
      } else {
          x <- DBI::dbReadTable(con, table, ...)
      }
    } else {
        warning("Database contains multiple tables. Attempting first table.")
        x <- DBI::dbReadTable(con, tabs[1], ...)
    }
    return(x)
}

