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

- offense_id:

  `<int>` The unique identification number for the offense

- incident_id:

  `<int>` The unique id of the incident that involved the offense

- offense_code:

  `<chr>` A three-digit code describing the offense that occurred

- attempt_complete_flag:

  `<chr>` either "A" (attempted), "C" (completed), or "U" (unfounded).

- location_id:

  `<int>` An index into the archive's table of location types

- num_premises_entered:

  `<chr>`

- method_entry_code:

  `<chr>`

## See also

[GLOSSARY_OF_OFFENSE_CODES](https://higherx4racine.github.io/nibrsr/reference/GLOSSARY_OF_OFFENSE_CODES.md)
