test_that("example agencies are correctly extracted from an archive", {
    "data" |>
        test_path("reduced_archive.zip") |>
        extract_agencies() |>
        expect_snapshot()
})
