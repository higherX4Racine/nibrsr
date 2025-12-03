# Categories of criminal offense that are cataloged in the NIBRS

Categories of criminal offense that are cataloged in the NIBRS

## Usage

``` r
GLOSSARY_OF_OFFENSE_TYPES
```

## Format

an object of type `spec_tbl_df/tbl_df/tbl/data.frame` with 86 rows and 6
columns

- offense_code:

  `<chr>` a two-digit-plus-letter or three-digit code for the offense

- offense_name:

  `<chr>` a short label for the offense

- crime_against:

  `<chr>` whether the target was a person, property, or the social
  fabric

- hc_flag:

  `<lgl>` whether or not the offense can be labeled as a hate crime

- ct_flag:

  `<lgl>` whether or not the offense can be labeled as a theft of cargo

- hc_code:

  `<chr>` which hate crime (if any), this offense can be categorized as

- offense_category_name:

  `<chr>` broad categories of crime like "Homicide" or "Larceny"

- offense_group:

  `<chr>` either "A" for intensely tracked crimes, "B" for
  less-intensely, or NA for non-crimes

## Source

<https://cde.ucr.cjis.gov/LATEST/webapp/>
