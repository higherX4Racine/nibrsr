## Copyright (C) 2025 by Higher Expectations for Racine County

#' Read details about specific offenses from an NIBRS archive.
#'
#' @param .archive_path `<chr>` the full path to the zip file
#' @param .contents `<tbl?>` optionally, a cached result from `zip::zip_list()`
#'
#' @returns an object of class `tibble/tbl_df/tbl/data.frame`
#' with 8 columns
#' \describe{
#'  \item{data_year}{`<int>` The year of the offense}
#'  \item{incident_id}{`<int>` The unique id of the incident that involved the offense}
#'  \item{offense_code}{`<chr>` A three-digit code describing the offense that occurred}
#'  \item{attempt_complete_flag}{`<chr>` either "A" (attempted), "C" (completed), or "U" (unfounded).}
#'  \item{location_code}{`<chr>` A two-digit code that describes the scene where the offense took place}
#'  \item{num_premises_entered}{`<int>` if a burglary at a hotel or storage facility, the number of units that were violated}
#'  \item{method_entry_code}{`<chr>`if a burglary, whether entry was forced (F), or not (N)}
#' }
#' @seealso [GLOSSARY_OF_OFFENSE_TYPES]
#' @export
extract_offenses <- function(.archive_path, .contents = NULL) {
    if (is.null(.contents)) {
        .contents <- zip::zip_list(.archive_path)
    }

    .offenses <- extract_archived_csv(
        .archive_path,
        stringr::str_subset(.contents$filename,
                            "NIBRS_OFFENSE\\.csv$")
    )

    .NO_CODE <- !("offense_code" %in% names(.offenses))

    .spec <- c(
        list(
            data_year = "i",
            offense_id = "i",
            incident_id = "i"
        ),
        dplyr::if_else(.NO_CODE,
                       list(offense_type_id = "i"),
                       list(offense_code = "c")
        ),
        list(
            attempt_complete_flag = "c",
            location_id = "i",
            num_premises_entered = "i",
            method_entry_code = "c",
            .default = "-"
        )
    )

    .offenses <- .offenses |>
        readr::type_convert(
            col_types = .spec
        )

    if (.NO_CODE) {
        .offense_types <- .archive_path |>
            extract_archived_csv(
                stringr::str_subset(.contents$filename,
                                    "NIBRS_OFFENSE_TYPE\\.csv"),
                list(offense_type_id = "i",
                     .default = "c")
            ) |>
            dplyr::select(
                "offense_type_id",
                "offense_code"
            )

        .offenses <- dplyr::left_join(
            .offenses,
            .offense_types,
            by = "offense_type_id"
        )
    }

    .offenses |>
        dplyr::left_join(
            .archive_path |>
                extract_archived_csv(
                    stringr::str_subset(.contents$filename,
                                        "NIBRS_LOCATION_TYPE\\.csv")
                ) |>
                dplyr::mutate(
                    location_id = as.integer(.data$location_id)
                ),
            by = "location_id"
        ) |>
        dplyr::select(
            "data_year",
            "offense_id",
            "incident_id",
            "offense_code",
            "attempt_complete_flag",
            "location_code",
            "num_premises_entered",
            "method_entry_code"
        ) |>
        dplyr::mutate(
            offense_code = stringr::str_remove(.data$offense_code,
                                               "^0+")
        )
}
