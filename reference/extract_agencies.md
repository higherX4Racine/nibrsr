# Read details about agencies from an NIBRS archive

Read details about agencies from an NIBRS archive

## Usage

``` r
extract_agencies(.archive_path, .contents = NULL)
```

## Arguments

- .archive_path:

  `<chr>` the full path to the zip file

- .contents:

  `<tbl?>` optionally, a cached result from
  [`zip::zip_list()`](https://r-lib.github.io/zip/reference/zip_list.html)

## Value

an object of type `tibble/tbl_df/tbl/data.frame` with 44 columns

- yearly_agency_id:

  `<int>`

- agency_id:

  `<int>`

- data_year:

  `<int>`

- ori:

  `<chr>`

- legacy_ori:

  `<chr>`

- covered_by_legacy_ori:

  `<chr>`

- direct_contributor_flag:

  `<lgl>`

- dormant_flag:

  `<lgl>`

- reporting_type:

  `<chr>`

- ucr_agency_name:

  `<chr>`

- ncic_agency_name:

  `<chr>`

- pub_agency_name:

  `<chr>`

- pub_agency_unit:

  `<chr>`

- agency_status:

  `<chr>`

- state_postal_abbr:

  `<chr>`

- division_code:

  `<int>`

- region_code:

  `<int>`

- agency_type_name:

  `<chr>`

- population:

  `<int>`

- submitting_agency_id:

  `<int>`

- sai:

  `<chr>`

- submitting_agency_name:

  `<chr>`

- suburban_area_flag:

  `<lgl>`

- population_group_code:

  `<chr>`

- parent_pop_group_code:

  `<int>`

- mip_flag:

  `<lgl>`

- summary_rape_def:

  `<chr>`

- pe_reported_flag:

  `<lgl>`

- male_officer:

  `<int>`

- male_civilian:

  `<int>`

- female_officer:

  `<int>`

- female_civilian:

  `<int>`

- nibrs_cert_date:

  `<date>`

- nibrs_start_date:

  `<date>`

- nibrs_leoka_start_date:

  `<date>`

- nibrs_ct_start_date:

  `<date>`

- nibrs_multi_bias_start_date:

  `<date>`

- nibrs_off_eth_start_date:

  `<date>`

- covered_flag:

  `<lgl>`

- county_name:

  `<chr>`

- msa_name:

  `<chr>`

- publishable_flag:

  `<lgl>`

- participated:

  `<chr>`

- nibrs_participated:

  `<chr>`
