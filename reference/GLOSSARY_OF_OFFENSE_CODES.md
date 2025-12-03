# Categories of criminal offense that are cataloged in the NIBRS

Categories of criminal offense that are cataloged in the NIBRS

## Usage

``` r
GLOSSARY_OF_OFFENSE_CODES
```

## Format

an object of type `tibble/tbl_df/tbl/data.frame` with 81 rows and 6
columns

- Group:

  `<chr>` Either "A" (serious crimes) or "B" (not so serious)

- Category:

  `<chr>` A broad category of crime, like "Assault" or "Larceny"

- Offense:

  `<chr>` A more specific category of crime, like "Pocket-picking" or
  "Purse-snatching"

- Code:

  `<chr>` A three-character code for the offense, either 3-digit or
  2-digit-plus-letter

- Against:

  `<chr>` Either "Person," "Property", or "Society." I chose for Group
  "B" crimes.

- NCIC Code:

  `<lst>` zero or more codes in the NCIC that count as this type of
  offense.

## Source

<https://le.fbi.gov/informational-tools/ucr/ucr-technical-specifications-user-manuals-and-data-tools>
