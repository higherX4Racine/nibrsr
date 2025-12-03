# Read details about specific incidents from an NIBRS archive.

Read details about specific incidents from an NIBRS archive.

## Usage

``` r
extract_incidents(.archive_path, .contents = NULL)
```

## Arguments

- .archive_path:

  `<chr>` the full path to the zip file

- .contents:

  `<tbl?>` optionally, a cached result from
  [`zip::zip_list()`](https://r-lib.github.io/zip/reference/zip_list.html)

## Value

an object of class `tibble/tbl_df/tbl/data.frame` with 15 columns

- data_year:

  `<int>` the year that the incident was reported to NIBRS

- agency_id:

  `<int>` the id of the law enforcement agency that handled the incident

- incident_id:

  `<int>` a unique id for the incident

- nibrs_month_id:

  `<int>` apparently months have serial codes?

- cargo_theft_flag:

  `<chr>` whether or not the incident involved cargo theft

- incident_date:

  `<date>` when the incident occurred

- report_date_flag:

  `<chr>` if the incident's date is truly known

- incident_hour:

  `<int>` the 60-minute span when the incident ocurred, 0-23

- cleared_except_id:

  `<int>` a code describing an exceptional clearance circumstance, like
  the perp dying

- cleared_except_date:

  `<date>` if the incident was cleared exceptionally, when that happened
