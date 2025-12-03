# example weapon information is correctly extracted from an archive

    Code
      extract_incident_weapons(test_path("data", "reduced_archive.zip"))
    Output
      # A tibble: 10 x 5
         data_year offense_id nibrs_weapon_id weapon_code shr_flag
             <int>      <int>           <int> <chr>       <chr>   
       1      2022  201723219              NA 99          f       
       2      2022  185449700              NA 40          t       
       3      2022  192312197              NA 11          t       
       4      2022  192314311              NA 11          t       
       5      2022  184010411              NA 99          f       
       6      2022  184006917              NA 99          f       
       7      2022  183007056              NA 30          t       
       8      2022  201540972              NA 12          t       
       9      2022  201730681              NA 13          t       
      10      2022  201574172              NA 85          t       

