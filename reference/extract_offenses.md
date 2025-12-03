# Read details about specific offenses from an NIBRS archive.

Read details about specific offenses from an NIBRS archive.

## Usage

``` r
extract_offenses(.archive_path, .contents = NULL)
```

## Arguments

- .archive_path:

  `<chr>` the full path to the zip file

- .contents:

  `<tbl?>` optionally, a cached result from
  [`zip::zip_list()`](https://r-lib.github.io/zip/reference/zip_list.html)

## Value

an object of class `tibble/tbl_df/tbl/data.frame` with 8 columns

- data_year:

  `<int>` The year of the offense

- incident_id:

  `<int>` The unique id of the incident that involved the offense

- offense_code:

  `<chr>` A three-digit code describing the offense that occurred

- attempt_complete_flag:

  `<chr>` either "A" (attempted), "C" (completed), or "U" (unfounded).

- location_code:

  `<chr>` A two-digit code that describes the scene where the offense
  took place

- num_premises_entered:

  `<int>` if a burglary at a hotel or storage facility, the number of
  units that were violated

- method_entry_code:

  `<chr>`if a burglary, whether entry was forced (F), or not (N)

## See also

[GLOSSARY_OF_OFFENSE_TYPES](https://higherx4racine.github.io/nibrsr/reference/GLOSSARY_OF_OFFENSE_TYPES.md)
