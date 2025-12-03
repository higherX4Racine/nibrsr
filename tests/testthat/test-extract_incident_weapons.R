test_that("example weapon information is correctly extracted from an archive", {
    "data" |>
        test_path("reduced_archive.zip") |>
        extract_incident_weapons() |>
        expect_snapshot()
})
