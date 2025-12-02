test_that("an example data set is read in correctly", {
    "data" |>
        file.path("reduced_archive.zip") |>
        test_path() |>
        extract_agencies() |>
        expect_snapshot()
})
