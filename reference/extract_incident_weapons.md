# Load weapon information from an NIBRS archive

Load weapon information from an NIBRS archive

## Usage

``` r
extract_incident_weapons(.archive_path, .contents = NULL)
```

## Arguments

- .archive_path:

  `<chr>` the full path to the .zip file

- .contents:

  `<dfr?>` the
  [`zip::zip_list()`](https://r-lib.github.io/zip/reference/zip_list.html)
  of the archive's contents

## Value

an object of type `tibble/tbl_df/tbl/data.frame` with 5 columns

- data_year:

  `<int>` the year that these data come from

- offense_id:

  `<int>` the unique id of the offense that used this weapon

- nibrs_weapon_id:

  \<`int>` the unique id of the specific weapon used in this crime

- weapon_code:

  `<chr>` a code for the type of weapon used in the crime

- shr_flag:

  `<chr>` whether or not this crime was reported through a summary tool.

## See also

[TYPES_OF_WEAPONS](https://higherx4racine.github.io/nibrsr/reference/TYPES_OF_WEAPONS.md)
for definitions of each weapon code
