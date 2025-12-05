## Copyright (C) 2025 by Higher Expectations for Racine County

GLOSSARY_OF_POPULATION_GROUPS <- tibble::tribble(
    ~ population_group_id, ~ population_group_code, ~ population_group_desc,
                       1L, "00",                    "Territories (Guam, etc.)",
                       2L, "1",                     "Includes 1A, 1B, 1C",
                       3L, "1A",                    "Cities 1,000,000 or over",
                       4L, "1B",                    "Cities from 500,000 thru 999,999",
                       5L, "1C",                    "Cities from 250,000 thru 499,999",
                       6L, "2",                     "Cities from 100,000 thru 249,999",
                       7L, "3",                     "Cities from 50,000 thru 99,999",
                       8L, "4",                     "Cities from 25,000 thru 49,999",
                       9L, "5",                     "Cities from 10,000 thru 24,999",
                      10L, "6",                     "Cities from 2,500 thru 9,999",
                      11L, "7",                     "Cities under 2,500",
                      12L, "8",                     "Includes 8A through 8E",
                      13L, "8A",                    "Non-MSA counties 100,000 or over",
                      14L, "8B",                    "Non-MSA counties from 25,000 thru 99,999",
                      15L, "8C",                    "Non-MSA counties from 10,000 thru 24,999",
                      16L, "8D",                    "Non-MSA counties under 10,000",
                      17L, "8E",                    "Non-MSA STATE POLICE",
                      18L, "9",                     "Includes 9A through 9E",
                      19L, "9A",                    "MSA counties 100,000 or over",
                      20L, "9B",                    "MSA counties from 25,000 thru 99,999",
                      21L, "9C",                    "MSA counties from 10,000 thru 24,999",
                      22L, "9D",                    "MSA counties under 10,000",
                      23L, "9E",                    "MSA STATE POLICE",
                      24L, "17",                    "Includes 1 through 7"
)

usethis::use_data(GLOSSARY_OF_POPULATION_GROUPS, overwrite = TRUE)
