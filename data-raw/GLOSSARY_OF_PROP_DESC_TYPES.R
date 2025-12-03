## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_PROP_DESC_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_PROP_DESC_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            prop_desc_name = "c",
            prop_desc_code = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_PROP_DESC_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_PROP_DESC_TYPES)
