# an example data set is read in correctly

    Code
      extract_incident_weapons(test_path(file.path("data", "reduced_archive.zip")))
    Output
      # A tibble: 10 x 5
         data_year offense_id nibrs_weapon_id weapon_code shr_flag
             <int>      <int>           <int> <chr>       <chr>   
       1      2020  157523660        32170986 99          N       
       2      2020  161485715        33275472 40          Y       
       3      2020  152979799        30792763 12          Y       
       4      2020  157500877        32173979 40          Y       
       5      2020  161468591        33273223 20          Y       
       6      2020  157541239        32177819 40          Y       
       7      2020  153002596        30798529 40          Y       
       8      2020  163288542        33772630 40          Y       
       9      2020  161424216        33263600 40          Y       
      10      2020  152983129        30791645 40          Y       

