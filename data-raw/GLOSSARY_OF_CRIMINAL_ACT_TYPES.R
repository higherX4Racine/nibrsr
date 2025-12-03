## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_CRIMINAL_ACT_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_CRIMINAL_ACT_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            criminal_act_code = "c",
            criminal_act_name = "c",
            criminal_act_desc = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_CRIMINAL_ACT_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_CRIMINAL_ACT_TYPES)
