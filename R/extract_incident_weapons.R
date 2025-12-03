## Copyright (C) 2025 by Higher Expectations for Racine County

#' Load weapon information from an NIBRS archive
#'
#' @param .archive_path `<chr>` the full path to the .zip file
#' @param .contents `<dfr?>` the [zip::zip_list()] of the archive's contents
#'
#' @returns an object of type `tibble/tbl_df/tbl/data.frame`
#' with 5 columns
#' \describe{
#'  \item{data_year}{`<int>` the year that these data come from}
#'  \item{offense_id}{`<int>` the unique id of the offense that used this weapon}
#'  \item{nibrs_weapon_id}{<`int>` the unique id of the specific weapon used in this crime}
#'  \item{weapon_code}{`<chr>` a code for the type of weapon used in the crime}
#'  \item{shr_flag}{`<chr>` whether or not this crime was reported through a summary tool.}
#' }
#' @seealso [TYPES_OF_WEAPONS] for definitions of each weapon code
#' @export
extract_incident_weapons <- function(.archive_path, .contents = NULL) {
    if (is.null(.contents)) {
        .contents <- zip::zip_list(.archive_path)
    }

    list(
        "iiii" = stringr::str_subset(.contents$filename,
                                     "NIBRS_WEAPON\\.csv$"),
        "iccc" = stringr::str_subset(.contents$filename,
                                     "NIBRS_WEAPON_TYPE\\.csv$")
    ) |>
        purrr::imap(
            \(.file, .spec) extract_archived_csv(.archive_path, .file, .spec)
        ) |>
        purrr::reduce(
            \(.lhs, .rhs) dplyr::left_join(.lhs, .rhs, by = "weapon_id")
        ) |>
        dplyr::select(
            "data_year",
            "offense_id",
            "nibrs_weapon_id",
            "weapon_code",
            "shr_flag"
        )
}
