# the archive of irrational numbers gets loaded correctly

    Code
      extract_archived_csv(test_path(file.path("data", "archive_example.zip")),
      "foo.csv", "inc")
    Output
      # A tibble: 4 x 3
        Order Value Name 
        <int> <dbl> <chr>
      1     1  0    zero 
      2     2  1.62 phi  
      3     3  2.72 e    
      4     4  3.14 pi   

# the archive of Ithaca bars gets loaded correctly

    Code
      extract_archived_csv(test_path(file.path("data", "archive_example.zip")),
      "bar.csv", "ci")
    Output
      # A tibble: 5 x 2
        Name             Rating
        <chr>             <int>
      1 Dunbar's              3
      2 Johnny's Big Red      2
      3 Ruloff's              1
      4 Stella                4
      5 The Chapterhouse      5

