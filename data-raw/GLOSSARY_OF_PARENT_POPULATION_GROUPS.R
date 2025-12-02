## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_PARENT_POPULATION_GROUPS <- tibble::tribble(
    ~ parent_pop_group_code, ~ parent_pop_group_desc,
                         1L, "All cities 250,000 or over",
                         2L, "Cities from 100,000 thru 249,999",
                         3L, "Cities from 50,000 thru 99,999",
                         4L, "Cities from 25,000 thru 49,999",
                         5L, "Cities from 10,000 thru 24,999",
                         6L, "Cities from 2,500 thru 9,999",
                         7L, "Cities under 2,500",
                         8L, "Non-MSA Counties",
                         9L, "MSA Counties"
)

usethis::use_data(GLOSSARY_OF_PARENT_POPULATION_GROUPS, overwrite = TRUE)
