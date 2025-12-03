# Weapon categories in the NIBRS

There is no limit to the number of weapons that might be reported with
an incident, so there might be zero or dozens. The only exception to
this is homicide, which must have a weapon associated with it.

## Usage

``` r
GLOSSARY_OF_WEAPON_TYPES
```

## Format

an object of type `spec_tbl_df/tbl_df/tbl/data.frame` with 22 rows and 3
columns

- weapon_code:

  `<chr>` a two-digit or two-digit-plus-A code

- weapon_name:

  `<chr>` a short description of the weapon

- shr_flage:

  `<lgl>` whether or not the weapon should be included in a supplemental
  homicide report

## Source

<https://cde.ucr.cjis.gov/LATEST/webapp/>
