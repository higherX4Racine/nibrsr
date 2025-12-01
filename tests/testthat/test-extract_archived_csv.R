test_that("the archive of irrational numbers gets loaded correctly", {
    "data" |>
        file.path(
        "archive_example.zip"
        ) |>
        test_path() |>
        extract_archived_csv(
            "foo.csv",
            "inc"
        ) |>
        expect_snapshot()
})

test_that("the archive of Ithaca bars gets loaded correctly", {
    "data" |>
        file.path(
            "archive_example.zip"
        ) |>
        test_path() |>
        extract_archived_csv(
            "bar.csv",
            "ci"
        ) |>
        expect_snapshot()
})
