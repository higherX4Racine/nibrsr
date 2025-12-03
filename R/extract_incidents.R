## Copyright (C) 2025 by Higher Expectations for Racine County

#' Read details about specific incidents from an NIBRS archive.
#'
#' @param .archive_path `<chr>` the full path to the zip file
#' @param .contents `<tbl?>` optionally, a cached result from `zip::zip_list()`
#'
#' @returns an object of class `tibble/tbl_df/tbl/data.frame`
#' with 15 columns
#' \describe{
#'  \item{data_year}{`<int>` the year that the incident was reported to NIBRS}
#'  \item{agency_id}{`<int>` the id of the law enforcement agency that handled the incident}
#'  \item{incident_id}{`<int>` a unique id for the incident}
#'  \item{nibrs_month_id}{`<int>` apparently months have serial codes?}
#'  \item{cargo_theft_flag}{`<chr>` whether or not the incident involved cargo theft}
#'  \item{incident_date}{`<date>` when the incident occurred}
#'  \item{report_date_flag}{`<chr>` if the incident's date is truly known}
#'  \item{incident_hour}{`<int>` the 60-minute span when the incident ocurred, 0-23}
#'  \item{cleared_except_id}{`<int>` a code describing an exceptional clearance circumstance, like the perp dying}
#'  \item{cleared_except_date}{`<date>` if the incident was cleared exceptionally, when that happened}
#' }
#'
#' @export
extract_incidents <- function(.archive_path, .contents = NULL) {
    if (is.null(.contents)) {
        .contents <- zip::zip_list(.archive_path)
    }

    .archive_path |>
        extract_archived_csv(
            stringr::str_subset(.contents$filename,
                                "NIBRS_incident\\.csv$"),
            list(
                data_year = "i",
                agency_id = "i",
                incident_id = "i",
                nibrs_month_id = "i",
                cargo_theft_flag = "c",
                incident_date = readr::col_date(format = "%Y-%m-%d"),
                report_date_flag = "c",
                incident_hour =  "i",
                cleared_except_id = "i",
                cleared_except_date = readr::col_date(format = "%Y-%m-%d"),
                .default = "-"
            )
        )
}
