context("Export to SQLite")
test_that("Export", {
    expect_true(export(mtcars, "example.sqlite", table = "mtcars") %in% dir())
})

context("Import from SQLite")
test_that("Import", {
    expect_true(is.data.frame(import("example.sqlite", table = "mtcars")))
})

unlink("example.sqlite")
