.export.rio_sqlite <- function(file, x, table, ...) {
    con <- DBI::dbConnect(RSQLite::SQLite(), file)
    on.exit(DBI::dbDisconnect(con))
    if (missing(table)) {
        DBI::dbWriteTable(con, as.character(substitute(x)), x, ...)
    } else {
        DBI::dbWriteTable(con, table, x, ...)
    }
    return(x)
}
