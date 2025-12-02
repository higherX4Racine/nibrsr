## Copyright (C) 2025 by Higher Expectations for Racine County

#' Read details about agencies from an NIBRS archive
#'
#' @param .archive_path `<chr>` the full path to the zip file
#' @param .contents `<tbl?>` optionally, a cached result from `zip::zip_list()`
#'
#' @returns an object of type `tibble/tbl_df/tbl/data.frame`
#' with 44 columns
#' \describe{
#'  \item{yearly_agency_id}{`<int>`}
#'  \item{agency_id}{`<int>`}
#'  \item{data_year}{`<int>`}
#'  \item{ori}{`<chr>`}
#'  \item{legacy_ori}{`<chr>`}
#'  \item{covered_by_legacy_ori}{`<chr>`}
#'  \item{direct_contributor_flag}{`<lgl>`}
#'  \item{dormant_flag}{`<lgl>`}
#'  \item{reporting_type}{`<chr>`}
#'  \item{ucr_agency_name}{`<chr>`}
#'  \item{ncic_agency_name}{`<chr>`}
#'  \item{pub_agency_name}{`<chr>`}
#'  \item{pub_agency_unit}{`<chr>`}
#'  \item{agency_status}{`<chr>`}
#'  \item{state_postal_abbr}{`<chr>`}
#'  \item{division_code}{`<int>`}
#'  \item{region_code}{`<int>`}
#'  \item{agency_type_name}{`<chr>`}
#'  \item{population}{`<int>`}
#'  \item{submitting_agency_id}{`<int>`}
#'  \item{sai}{`<chr>`}
#'  \item{submitting_agency_name}{`<chr>`}
#'  \item{suburban_area_flag}{`<lgl>`}
#'  \item{population_group_code}{`<chr>`}
#'  \item{parent_pop_group_code}{`<int>`}
#'  \item{mip_flag}{`<lgl>`}
#'  \item{summary_rape_def}{`<chr>`}
#'  \item{pe_reported_flag}{`<lgl>`}
#'  \item{male_officer}{`<int>`}
#'  \item{male_civilian}{`<int>`}
#'  \item{female_officer}{`<int>`}
#'  \item{female_civilian}{`<int>`}
#'  \item{nibrs_cert_date}{`<date>`}
#'  \item{nibrs_start_date}{`<date>`}
#'  \item{nibrs_leoka_start_date}{`<date>`}
#'  \item{nibrs_ct_start_date}{`<date>`}
#'  \item{nibrs_multi_bias_start_date}{`<date>`}
#'  \item{nibrs_off_eth_start_date}{`<date>`}
#'  \item{covered_flag}{`<lgl>`}
#'  \item{county_name}{`<chr>`}
#'  \item{msa_name}{`<chr>`}
#'  \item{publishable_flag}{`<lgl>`}
#'  \item{participated}{`<chr>`}
#'  \item{nibrs_participated}{`<chr>`}
#' }
#'
#' @export
extract_agencies <- function(.archive_path, .contents = NULL) {
    if (is.null(.contents)) {
        .contents <- zip::zip_list(.archive_path)
    }
    .text_data <- .archive_path |>
        extract_archived_csv(
            stringr::str_subset(.contents$filename,
                                "agencies\\.csv"),
            c(.default = "c")
        ) |>
        dplyr::rename_with(
            tolower
        )

    .date_parser <- readr::col_date(
        format = dplyr::if_else(
            any(stringr::str_detect(.text_data$nibrs_cert_date, "[a-zA-Z]")),
            "%d-%b-%y",
            "%Y-%m-%d"
        )
    )

    .text_data |>
        readr::type_convert(
            col_types =  list(
                yearly_agency_id = "i",
                agency_id = "i",
                data_year = "i",
                ori = "c",
                legacy_ori = "c",
                covered_by_legacy_ori = "c",
                direct_contributor_flag = "c",
                dormant_flag = "c",
                dormant_year = "-",
                reporting_type = "c",
                ucr_agency_name = "c",
                ncic_agency_name = "c",
                pub_agency_name = "c",
                pub_agency_unit = "c",
                agency_status = "c",
                state_postal_abbr = "c",
                division_code = "i",
                region_code = "i",
                agency_type_name = "c",
                population = "i",
                submitting_agency_id = "i",
                sai = "c",
                submitting_agency_name = "c",
                suburban_area_flag = "c",
                population_group_code = "c",
                parent_pop_group_code = "i",
                mip_flag = "c",
                summary_rape_def = "c",
                pe_reported_flag = "c",
                male_officer = "i",
                male_civilian = "i",
                female_officer = "i",
                female_civilian = "i",
                nibrs_cert_date = .date_parser,
                nibrs_start_date = .date_parser,
                nibrs_leoka_start_date = .date_parser,
                nibrs_ct_start_date = .date_parser,
                nibrs_multi_bias_start_date = .date_parser,
                nibrs_off_eth_start_date = .date_parser,
                covered_flag = "c",
                county_name = "c",
                msa_name = "c",
                publishable_flag = "c",
                participated = "c",
                nibrs_participated = "c",
                .default = "-"
            )
        ) |>
        dplyr::mutate(
            dplyr::across(tidyselect::contains("flag"),
                          \(.) . == "Y")
        )
}
