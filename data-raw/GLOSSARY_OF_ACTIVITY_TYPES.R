## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_ACTIVITY_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_ACTIVITY_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            activity_type_code = "c",
            activity_type_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_ACTIVITY_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_ACTIVITY_TYPES)
