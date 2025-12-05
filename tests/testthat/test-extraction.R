list(
    agency = extract_agencies,
    weapon = extract_incident_weapons,
    incident = extract_incidents,
    offense = extract_offenses
) |>
    purrr::iwalk(
        \(.function, .label) {
            purrr::walk(
                list("old", "new"),
                \(.style) {
                    .label |>
                        paste(
                            "information from an",
                            paste0(.style, "-style"),
                            "archive"
                        ) |>
                        test_that(
                            {
                                "data" |>
                                    test_path(
                                        paste0(.style, "_style_archive.zip")
                                    ) |>
                                    .function() |>
                                    tibble::as_tibble() |>
                                    expect_snapshot_value(
                                        style = "json2"
                                    )
                            }
                        )
                }
            )
        }
    )
