test_that("example incidents are correctly extracted from an archive", {
    "data" |>
        test_path("reduced_archive.zip") |>
        extract_incidents() |>
        expect_snapshot()
})
