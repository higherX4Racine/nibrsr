test_that("the archive of irrational numbers gets loaded correctly", {
    "data" |>
        test_path(
            "archive_example.zip"
        ) |>
        extract_archived_csv(
            "foo.csv",
            "inc"
        ) |>
        expect_snapshot()
})

test_that("the archive of Ithaca bars gets loaded correctly", {
    "data" |>
        test_path(
            "archive_example.zip"
        ) |>
        extract_archived_csv(
            "bar.csv",
            "ci"
        ) |>
        expect_snapshot()
})
