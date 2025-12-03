# example agencies are correctly extracted from an archive

    Code
      extract_agencies(test_path("data", "reduced_archive.zip"))
    Output
      # A tibble: 6 x 44
        yearly_agency_id agency_id data_year ori      legacy_ori covered_by_legacy_ori
                   <int>     <int>     <int> <chr>    <chr>      <chr>                
      1        209542022     20954      2022 WI01300~ WI0130000  <NA>                 
      2        210962022     21096      2022 WI03703~ WI0370300  <NA>                 
      3        211432022     21143      2022 WI04300~ WI0430000  <NA>                 
      4        213202022     21320      2022 WI07106~ WI0710600  <NA>                 
      5        213252022     21325      2022 WI07203~ WI0720300  <NA>                 
      6        213312022     21331      2022 WIMPD00~ WIMPD0000  <NA>                 
      # i 38 more variables: direct_contributor_flag <lgl>, dormant_flag <lgl>,
      #   reporting_type <chr>, ucr_agency_name <chr>, ncic_agency_name <chr>,
      #   pub_agency_name <chr>, pub_agency_unit <chr>, agency_status <chr>,
      #   state_postal_abbr <chr>, division_code <int>, region_code <int>,
      #   agency_type_name <chr>, population <int>, submitting_agency_id <int>,
      #   sai <chr>, submitting_agency_name <chr>, suburban_area_flag <lgl>,
      #   population_group_code <chr>, parent_pop_group_code <int>, ...

