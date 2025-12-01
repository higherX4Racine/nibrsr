#' Pull one comma-separated table from a zipped NIBRS file
#'
#' @param .archive_path `<chr>` the full path to the zipped file
#' @param .component_path `<chr>` the path, within the archive, to the csv file
#' @param .spec `<chr|lst>` the column specification for the csv file
#'
#' @returns `<tbl>` a data frame with properties defined by `.spec`
#' @keywords internal
extract_archived_csv <- function(.archive_path, .component_path, .spec) {
    .archive_path |>
        unz(
            filename = .component_path
        ) |>
        readr::read_csv(
            col_types = .spec
        )
}
