# Pull one comma-separated table from a zipped NIBRS file

Pull one comma-separated table from a zipped NIBRS file

## Usage

``` r
extract_archived_csv(.archive_path, .component_path, .spec)
```

## Arguments

- .archive_path:

  `<chr>` the full path to the zipped file

- .component_path:

  `<chr>` the path, within the archive, to the csv file

- .spec:

  `<chr|lst>` the column specification for the csv file

## Value

`<tbl>` a data frame with properties defined by `.spec`
