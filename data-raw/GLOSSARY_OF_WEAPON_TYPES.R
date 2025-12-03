## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_WEAPON_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_WEAPON_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            weapon_code = "c",
            weapon_name = "c",
            shr_flag = "l"
        )
    )

usethis::use_data(GLOSSARY_OF_WEAPON_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_WEAPON_TYPES)
