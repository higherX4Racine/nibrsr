## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_ASSIGNMENT_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_ASSIGNMENT_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            assignment_type_code = "c",
            assignment_type_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_ASSIGNMENT_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_ASSIGNMENT_TYPES)
