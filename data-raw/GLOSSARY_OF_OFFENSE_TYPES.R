## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_OFFENSE_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_OFFENSE_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            offense_code = "c",
            offense_name = "c",
            crime_against = "c",
            ct_flag = "l",
            hc_flag = "l",
            hc_code = "c",
            offense_category_name = "c",
            offense_group = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_OFFENSE_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_OFFENSE_TYPES)
