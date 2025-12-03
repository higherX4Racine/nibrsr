# example incidents are correctly extracted from an archive

    Code
      extract_incidents(test_path("data", "reduced_archive.zip"))
    Output
      # A tibble: 10 x 10
         data_year agency_id incident_id nibrs_month_id cargo_theft_flag incident_date
             <int>     <int>       <int>          <int> <chr>            <date>       
       1      2022     21096   153648695       44092599 f                2022-03-19   
       2      2022     20954   154908728       44153736 f                2022-03-29   
       3      2022     20954   168921420       44220252 f                2022-08-17   
       4      2022     21143   153651523       44153913 f                2022-04-09   
       5      2022     21320   169083837       44440211 f                2022-12-07   
       6      2022     21325   169077674       44443729 f                2022-11-02   
       7      2022     21331   152775642       40416868 f                2022-02-22   
       8      2022     21331   160879249       44220450 f                2022-08-05   
       9      2022     21331   160881137       44220450 f                2022-08-20   
      10      2022     21331   168949303       44295391 f                2022-12-08   
      # i 4 more variables: report_date_flag <chr>, incident_hour <int>,
      #   cleared_except_id <int>, cleared_except_date <date>

