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
#'  \item{offense_id}{`<int>` The unique identification number for the offense}
#'  \item{incident_id}{`<int>` The unique id of the incident that involved the offense}
#'  \item{offense_code}{`<chr>` A three-digit code describing the offense that occurred}
#'  \item{attempt_complete_flag}{`<chr>` either "A" (attempted), "C" (completed), or "U" (unfounded).}
#'  \item{location_id}{`<int>` An index into the archive's table of location types}
#'  \item{num_premises_entered}{`<chr>`}
#'  \item{method_entry_code}{`<chr>`}
#' }
#' @seealso [GLOSSARY_OF_OFFENSE_CODES]
#' @export
extract_offenses <- function(.archive_path, .contents = NULL) {
    if (is.null(.contents)) {
        .contents <- zip::zip_list(.archive_path)
    }

    .archive_path |>
        extract_archived_csv(
            stringr::str_subset(.contents$filename,
                                "NIBRS_OFFENSE\\.csv$"),
            list(
                data_year = "i",
                offense_id = "i",
                incident_id = "i",
                offense_code = "c",
                attempt_complete_flag = "c",
                location_id = "i",
                num_premises_entered = "c",
                method_entry_code = "c"
            )
        )
    }
