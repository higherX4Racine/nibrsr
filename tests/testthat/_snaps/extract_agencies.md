# an example data set is read in correctly

    Code
      extract_agencies(test_path(file.path("data", "reduced_archive.zip")))
    Output
      # A tibble: 7 x 44
        yearly_agency_id agency_id data_year ori      legacy_ori covered_by_legacy_ori
                   <int>     <int>     <int> <chr>    <chr>      <chr>                
      1        209252020     20925      2020 WI00600~ WI0060000  <NA>                 
      2        210702020     21070      2020 WI03202~ WI0320200  <NA>                 
      3        210962020     21096      2020 WI03703~ WI0370300  <NA>                 
      4        212002020     21200      2020 WI05207~ WI0520700  <NA>                 
      5        212042020     21204      2020 WI05400~ WI0540000  <NA>                 
      6        213152020     21315      2020 WI07101~ WI0710100  <NA>                 
      7        213312020     21331      2020 WIMPD00~ WIMPD0000  <NA>                 
      # i 38 more variables: direct_contributor_flag <lgl>, dormant_flag <lgl>,
      #   reporting_type <chr>, ucr_agency_name <chr>, ncic_agency_name <chr>,
      #   pub_agency_name <chr>, pub_agency_unit <chr>, agency_status <chr>,
      #   state_postal_abbr <chr>, division_code <int>, region_code <int>,
      #   agency_type_name <chr>, population <int>, submitting_agency_id <int>,
      #   sai <chr>, submitting_agency_name <chr>, suburban_area_flag <lgl>,
      #   population_group_code <chr>, parent_pop_group_code <int>, ...

