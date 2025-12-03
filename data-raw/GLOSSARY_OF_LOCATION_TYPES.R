## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_LOCATION_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_LOCATION_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            location_code = "c",
            location_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_LOCATION_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_LOCATION_TYPES)
