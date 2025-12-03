# example offenses are correctly extracted from an archive

    Code
      extract_offenses(test_path("data", "reduced_archive.zip"))
    Output
      # A tibble: 10 x 8
         data_year offense_id incident_id offense_code attempt_complete_flag
             <int>      <int>       <int> <chr>        <chr>                
       1      2022  184006917   153648695 13A          C                    
       2      2022  185449700   154908728 13A          C                    
       3      2022  201540972   168921420 520          C                    
       4      2022  184010411   153651523 11A          C                    
       5      2022  201730681   169083837 520          C                    
       6      2022  201723219   169077674 11D          C                    
       7      2022  183007056   152775642 120          C                    
       8      2022  192312197   160879249 520          C                    
       9      2022  192314311   160881137 520          C                    
      10      2022  201574172   168949303 13A          C                    
      # i 3 more variables: location_code <chr>, num_premises_entered <int>,
      #   method_entry_code <chr>

