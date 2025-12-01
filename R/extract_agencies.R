## Copyright (C) 2025 by Higher Expectations for Racine County

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

    .date_format <- dplyr::if_else(
        any(stringr::str_detect(.text_data$nibrs_cert_date, "[a-zA-Z]")),
        "%d-%b-%y",
        "%Y-%m-%d"
    )

    readr::type_convert(
        .text_data,
        col_types =  list(
            yearly_agency_id = "i",
            agency_id = "i",
            data_year = "i",
            ori = "c",
            legacy_ori = "c",
            covered_by_legacy_ori = "c",
            direct_contributor_flag = "c",
            dormant_flag = "c",
            dormant_year = "c",
            reporting_type = "c",
            ucr_agency_name = "c",
            ncic_agency_name = "c",
            pub_agency_name = "c",
            pub_agency_unit = "c",
            agency_status = "c",
            state_id = "i",
            state_name = "c",
            state_abbr = "c",
            state_postal_abbr = "c",
            division_code = "i",
            division_name = "c",
            region_code = "i",
            region_name = "c",
            region_desc = "c",
            agency_type_name = "c",
            population = "i",
            submitting_agency_id = "i",
            sai = "c",
            submitting_agency_name = "c",
            suburban_area_flag = "c",
            population_group_id = "i",
            population_group_code = "c",
            population_group_desc = "c",
            parent_pop_group_code = "i",
            parent_pop_group_desc = "c",
            mip_flag = "c",
            pop_sort_order = "i",
            summary_rape_def = "c",
            pe_reported_flag = "c",
            male_officer = "i",
            male_civilian = "i",
            female_officer = "i",
            female_civilian = "i",
            nibrs_cert_date = readr::col_date(format = .date_format),
            nibrs_start_date = readr::col_date(format = .date_format),
            nibrs_leoka_start_date = readr::col_date(format = .date_format),
            nibrs_ct_start_date = readr::col_date(format = .date_format),
            nibrs_multi_bias_start_date = readr::col_date(format = .date_format),
            nibrs_off_eth_start_date = readr::col_date(format = .date_format),
            covered_flag = "c",
            county_name = "c",
            msa_name = "c",
            publishable_flag = "c",
            participated = "c",
            nibrs_participated = "c",
            .default = "-"
        )
    )
}
