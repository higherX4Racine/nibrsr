## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_PROP_LOSS_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_PROP_LOSS_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            prop_loss_name = "c",
            prop_loss_desc = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_PROP_LOSS_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_PROP_LOSS_TYPES)
