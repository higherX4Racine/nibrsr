# Categories of geographic area in the NIBRS

These categories combine both political organization (town, city,
county) and population size.

## Usage

``` r
GLOSSARY_OF_POPULATION_GROUPS
```

## Format

an object of type `spec_tbl_df/tbl_df/tbl/data.frame` with 24 rows and 3
columns

- population_group_id:

  `<int>` an index that may not be consistent across archives

- population_group_code:

  `<chr>` a digit-plus-optional-letter code that may be consistent

- population_group_desc:

  `<chr>` a short description of the size and nature of the area

## Source

<https://cde.ucr.cjis.gov/LATEST/webapp/>
