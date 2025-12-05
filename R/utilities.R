## Copyright (C) 2025 by Higher Expectations for Racine County

simplistic_date_formatter <- function(.date_column) {

    if (all(is.na(.date_column))) {
        return(readr::col_logical())
    }

    if (any(stringr::str_detect(.date_column, ":"), na.rm = TRUE)) {
        return(readr::col_datetime())
    }

    if (any(stringr::str_detect(.date_column, "[A-Za-z]"), na.rm = TRUE)) {
        return(readr::col_date(format = "%d-%b-%y"))
    }

    return(readr::col_date("%Y-%m-%d"))
}
