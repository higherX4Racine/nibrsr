test_that("example offenses are correctly extracted from an archive", {
    "data" |>
        test_path("reduced_archive.zip") |>
        extract_offenses() |>
        expect_snapshot()
})
