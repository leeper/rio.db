.export.rio_sqlite <- function(file, x, table = substitute(x, parent.frame()), ...) {
    con <- DBI::dbConnect(RSQLite::SQLite(), file)
    on.exit(DBI::dbDisconnect(con))
    DBI::dbWriteTable(con, table, x, ...)
    return(file)
}
