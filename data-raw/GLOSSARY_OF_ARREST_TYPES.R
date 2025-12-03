## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_ARREST_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_ARREST_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            arrest_type_code = "c",
            arrest_type_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_ARREST_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_ARREST_TYPES)
