# Weapon categories in the NIBRS

There is no limit to the number of weapons that might be reported with
an incident, so there might be zero or dozens. The only exception to
this is homicide, which must have a weapon associated with it.

## Usage

``` r
TYPES_OF_WEAPONS
```

## Format

an object of type `tibble/tbl_df/tbl/data.frame` with 22 rows and 3
columns

- weapon_code:

  `<chr>` a two-digit or two-digit-plus-A code

- Gun:

  `<lgl>` whether or not the weapon is a kind of firearm

- weapon_name:

  `<chr>` a short description of the weapon

## Source

<https://cde.ucr.cjis.gov/LATEST/webapp/>
