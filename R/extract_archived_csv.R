## Copyright (C) 2025 by Higher Expectations for Racine County

#' Pull one comma-separated table from a zipped NIBRS file
#'
#' @param .archive_path `<chr>` the full path to the zipped file
#' @param .component_path `<chr>` the path, within the archive, to the csv file
#' @param .spec `<chr|lst|NULL>` the column specification for the csv file, defaults to all characters
#'
#' @returns `<tbl>` a data frame with properties defined by `.spec`
#' @keywords internal
extract_archived_csv <- function(.archive_path, .component_path, .spec = NULL) {

    .result <- .archive_path |>
        unz(
            filename = .component_path
        ) |>
        readr::read_csv(
            col_types = list(.default = "c"),
            name_repair = "unique_quiet"
        ) |>
        dplyr::rename_with(
            tolower
        )

    if (!is.null(.spec)) {

        if (!is.null(names(.spec))) {
            names(.spec) <- tolower(names(.spec))
        }

        .result <- readr::type_convert(.result,
                                       col_types = .spec)
    }

    return(.result)
}
