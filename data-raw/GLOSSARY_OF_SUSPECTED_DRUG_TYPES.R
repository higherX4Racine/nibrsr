## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_SUSPECTED_DRUG_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_SUSPECTED_DRUG_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            suspected_drug_code = "c",
            suspected_drug_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_SUSPECTED_DRUG_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_SUSPECTED_DRUG_TYPES)
