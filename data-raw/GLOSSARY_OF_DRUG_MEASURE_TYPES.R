## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_DRUG_MEASURE_TYPES <- "extdata" |>
    system.file(
        "type_glossaries",
        "NIBRS_DRUG_MEASURE_TYPE.csv",
        package = "nibrsr"
    ) |>
    readr::read_csv(
        col_types = list(
            drug_measure_code = "c",
            drug_measure_name = "c"
        )
    )

usethis::use_data(GLOSSARY_OF_DRUG_MEASURE_TYPES, overwrite = TRUE)

str(GLOSSARY_OF_DRUG_MEASURE_TYPES)
