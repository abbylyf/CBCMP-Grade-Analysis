    library(dplyr)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    library(readr)

import csv file
---------------

    grades <- read.csv("grades.csv")
    grades

    ##                       Course.Sub.category
    ## 1                        Basic Subjects 1
    ## 2                        Basic Subjects 1
    ## 3                        Basic Subjects 1
    ## 4                        Basic Subjects 1
    ## 5                        Basic Subjects 1
    ## 6                        Basic Subjects 1
    ## 7       International General Education 2
    ## 8       International General Education 2
    ## 9       International General Education 2
    ## 10      International General Education 2
    ## 11                Second Foreign Language
    ## 12                Second Foreign Language
    ## 13                Second Foreign Language
    ## 14                Second Foreign Language
    ## 15                Second Foreign Language
    ## 16                Second Foreign Language
    ## 17                Second Foreign Language
    ## 18                Second Foreign Language
    ## 19    Information Literacy and Processing
    ## 20                      Health and Sports
    ## 21                      Health and Sports
    ## 22      Basic Major Subjects (Compulsory)
    ## 23      Basic Major Subjects (Compulsory)
    ## 24      Basic Major Subjects (Compulsory)
    ## 25      Basic Major Subjects (Compulsory)
    ## 26      Basic Major Subjects (Compulsory)
    ## 27      Basic Major Subjects (Compulsory)
    ## 28      Basic Major Subjects (Compulsory)
    ## 29      Basic Major Subjects (Compulsory)
    ## 30      Basic Major Subjects (Compulsory)
    ## 31      Basic Major Subjects (Compulsory)
    ## 32      Basic Major Subjects (Compulsory)
    ## 33 Basic Major Subjects (Partly Elective)
    ## 34 Basic Major Subjects (Partly Elective)
    ## 35 Basic Major Subjects (Partly Elective)
    ## 36 Basic Major Subjects (Partly Elective)
    ## 37 Basic Major Subjects (Partly Elective)
    ## 38            Major Subjects (Compulsory)
    ## 39            Major Subjects (Compulsory)
    ## 40            Major Subjects (Compulsory)
    ## 41            Major Subjects (Compulsory)
    ## 42            Major Subjects (Compulsory)
    ## 43            Major Subjects (Compulsory)
    ## 44            Major Subjects (Compulsory)
    ## 45            Major Subjects (Compulsory)
    ## 46            Major Subjects (Compulsory)
    ## 47            Major Subjects (Compulsory)
    ## 48            Major Subjects (Compulsory)
    ## 49            Major Subjects (Compulsory)
    ## 50            Major Subjects (Compulsory)
    ## 51            Major Subjects (Compulsory)
    ## 52            Major Subjects (Compulsory)
    ## 53            Major Subjects (Compulsory)
    ## 54            Major Subjects (Compulsory)
    ## 55     Major Subjects (Entirely Elective)
    ## 56     Major Subjects (Entirely Elective)
    ## 57     Major Subjects (Entirely Elective)
    ## 58     Major Subjects (Entirely Elective)
    ## 59     Major Subjects (Entirely Elective)
    ## 60     Major Subjects (Entirely Elective)
    ## 61     Major Subjects (Entirely Elective)
    ## 62     Major Subjects (Entirely Elective)
    ## 63     Major Subjects (Entirely Elective)
    ## 64     Major Subjects (Entirely Elective)
    ## 65     Major Subjects (Entirely Elective)
    ## 66     Major Subjects (Entirely Elective)
    ## 67     Major Subjects (Entirely Elective)
    ## 68     Major Subjects (Entirely Elective)
    ## 69     Major Subjects (Entirely Elective)
    ## 70     Major Subjects (Entirely Elective)
    ## 71     Major Subjects (Entirely Elective)
    ##                                           Course.Name Credits Year.Completed
    ## 1                                  Academic Writing I       2           2017
    ## 2                            Critical Thinking Skills       2           2017
    ## 3                                 Presentation Skills       2           2017
    ## 4                      Computers in Language Learning       2           2017
    ## 5      Second Language Learning with Online Resources       2           2018
    ## 6                                 Science and Society       2           2017
    ## 7  International Communication Seminar (Japanese) 103       2           2017
    ## 8  International Communication Seminar (Japanese) 203       2           2018
    ## 9  International Communication Seminar (Japanese) 303       2           2018
    ## 10 International Communication Seminar (Japanese) 403       2           2019
    ## 11                              Japanese Language 101       1           2017
    ## 12                              Japanese Language 102       1           2017
    ## 13                              Japanese Language 201       1           2018
    ## 14                              Japanese Language 202       1           2018
    ## 15                              Japanese Language 301       1           2018
    ## 16                              Japanese Language 302       1           2018
    ## 17                              Japanese Language 401       1           2019
    ## 18                              Japanese Language 402       1           2019
    ## 19                               Information Literacy       2           2017
    ## 20                                  Health & Sports 1       1           2017
    ## 21                                  Health & Sports 2       1           2018
    ## 22                             Introductory Biology 1       2           2017
    ## 23                           Introductory Chemistry 1       2           2017
    ## 24                             Introductory Physics 1       2           2017
    ## 25                                      Mathematics 1       2           2017
    ## 26                          Basic Biology Experiments       1           2018
    ## 27                          Basic Physics Experiments       1           2018
    ## 28                             Introductory Biology 2       2           2018
    ## 29                           Introductory Chemistry 2       2           2018
    ## 30                             Introductory Physics 2       2           2018
    ## 31                                      Mathematics 2       2           2018
    ## 32                 Introductory Chemistry Experiments       1           2018
    ## 33          Exercise Session (Introductory Biology 1)       2           2017
    ## 34          Exercise Session (Introductory Biology 2)       2           2018
    ## 35        Exercise Session (Introductory Chemistry 1)       2           2017
    ## 36        Exercise Session (Introductory Chemistry 2)       2           2018
    ## 37                     Exercise Session (Mathematics)       2           2017
    ## 38                     Combined Major Basic Seminar 1       1           2017
    ## 39    General Guidelines for Safety in the Laboratory       1           2018
    ## 40                                     Biochemistry 1       2           2019
    ## 41                                     Bioinformatics       2           2018
    ## 42                                     Cell Biology 1       2           2018
    ## 43                                Organic Chemistry 1       2           2018
    ## 44                               Physical Chemistry 1       2           2018
    ## 45                  Chemistry & Biology Experiments 1       3           2019
    ## 46                  Exercise Session (Bioinformatics)       2           2018
    ## 47                  Exercise Session (Biochemistry 1)       2           2019
    ## 48                  Exercise Session (Cell Biology 1)       2           2018
    ## 49             Exercise Session (Organic Chemistry 1)       2           2018
    ## 50            Exercise Session (Physical Chemistry 1)       2           2018
    ## 51                             Analytical Chemistry 1       1           2018
    ## 52           Exercise Session(Analytical Chemistry 1)       1           2018
    ## 53                              Inorganic Chemistry 1       1           2018
    ## 54            Exercise Session(Inorganic Chemistry 1)       1           2018
    ## 55                     Combined Major Basic Seminar 2       1           2018
    ## 56                                     Cell Biology 2       2           2019
    ## 57                                 Molecular Genetics       2           2019
    ## 58                                Organic Chemistry 2       2           2019
    ## 59                  Chemistry & Biology Experiments 2       3           2019
    ## 60                                Organic Chemistry 3       2           2019
    ## 61                     Combined Major Honor Seminar 4       1           2019
    ## 62                     Combined Major Honor Seminar 5       1           2019
    ## 63                          Marine Biology Field Work       2           2018
    ## 64              Exercise Session (Molecular Genetics)       2           2019
    ## 65                  Exercise Session (Cell Biology 2)       2           2019
    ## 66             Exercise Session (Organic Chemistry 2)       2           2019
    ## 67             Exercise Session (Organic Chemistry 3)       2           2019
    ## 68                             Analytical Chemistry 2       1           2019
    ## 69           Exercise Session(Analytical Chemistry 2)       1           2019
    ## 70                             Analytical Chemistry 3       1           2019
    ## 71           Exercise Session(Analytical Chemistry 3)       1           2019
    ##    Semester.Completed grade.in.words
    ## 1         Winter Term              S
    ## 2         Winter Term              A
    ## 3         Winter Term              S
    ## 4         Winter Term              S
    ## 5         Summer Term              A
    ## 6         Winter Term              S
    ## 7         Winter Term              S
    ## 8         Summer Term              S
    ## 9         Winter Term              S
    ## 10        Summer Term              A
    ## 11        Winter Term              S
    ## 12        Winter Term              S
    ## 13        Summer Term              S
    ## 14        Summer Term              S
    ## 15        Winter Term              S
    ## 16        Winter Term              S
    ## 17        Summer Term              A
    ## 18        Summer Term              A
    ## 19        Winter Term              S
    ## 20        Winter Term              S
    ## 21        Summer Term              S
    ## 22        Winter Term              S
    ## 23        Winter Term              S
    ## 24        Winter Term              S
    ## 25        Winter Term              A
    ## 26        Summer Term              S
    ## 27        Summer Term              S
    ## 28        Summer Term              S
    ## 29        Summer Term              S
    ## 30        Summer Term              S
    ## 31        Summer Term              S
    ## 32        Spring Term              S
    ## 33        Winter Term              S
    ## 34        Summer Term              S
    ## 35        Winter Term              S
    ## 36        Summer Term              A
    ## 37        Winter Term              S
    ## 38        Winter Term              A
    ## 39        Summer Term              S
    ## 40        Summer Term              S
    ## 41        Winter Term              S
    ## 42        Winter Term              S
    ## 43        Winter Term              S
    ## 44        Winter Term              S
    ## 45        Summer Term              A
    ## 46        Winter Term              S
    ## 47        Summer Term              S
    ## 48        Winter Term              S
    ## 49        Winter Term              S
    ## 50        Winter Term              S
    ## 51        Winter Term              S
    ## 52        Winter Term              S
    ## 53        Winter Term              S
    ## 54        Winter Term              S
    ## 55        Summer Term              S
    ## 56        Summer Term              S
    ## 57        Winter Term              S
    ## 58        Summer Term              S
    ## 59        Winter Term              A
    ## 60        Winter Term              S
    ## 61        Summer Term              S
    ## 62        Winter Term              A
    ## 63        Summer Term              A
    ## 64        Winter Term              S
    ## 65        Summer Term              S
    ## 66        Summer Term              S
    ## 67        Winter Term              S
    ## 68        Summer Term              S
    ## 69        Spring Term              S
    ## 70        Winter Term              S
    ## 71        Winter Term              S

add subject GPA column
----------------------

    grades.s <- grades%>%
      filter(grade.in.words == "S")%>%
      mutate(sub_gpa = 4)
    grades.a <- grades%>%
      filter(grade.in.words == "A")%>%
      mutate(sub_gpa = 3)
    grades <- grades.s%>%
      bind_rows(grades.a)

add total gpa column
--------------------

    grades <- grades%>%
      mutate(tol_gpa = sub_gpa * Credits)
    grades

    ##                       Course.Sub.category
    ## 1                        Basic Subjects 1
    ## 2                        Basic Subjects 1
    ## 3                        Basic Subjects 1
    ## 4                        Basic Subjects 1
    ## 5       International General Education 2
    ## 6       International General Education 2
    ## 7       International General Education 2
    ## 8                 Second Foreign Language
    ## 9                 Second Foreign Language
    ## 10                Second Foreign Language
    ## 11                Second Foreign Language
    ## 12                Second Foreign Language
    ## 13                Second Foreign Language
    ## 14    Information Literacy and Processing
    ## 15                      Health and Sports
    ## 16                      Health and Sports
    ## 17      Basic Major Subjects (Compulsory)
    ## 18      Basic Major Subjects (Compulsory)
    ## 19      Basic Major Subjects (Compulsory)
    ## 20      Basic Major Subjects (Compulsory)
    ## 21      Basic Major Subjects (Compulsory)
    ## 22      Basic Major Subjects (Compulsory)
    ## 23      Basic Major Subjects (Compulsory)
    ## 24      Basic Major Subjects (Compulsory)
    ## 25      Basic Major Subjects (Compulsory)
    ## 26      Basic Major Subjects (Compulsory)
    ## 27 Basic Major Subjects (Partly Elective)
    ## 28 Basic Major Subjects (Partly Elective)
    ## 29 Basic Major Subjects (Partly Elective)
    ## 30 Basic Major Subjects (Partly Elective)
    ## 31            Major Subjects (Compulsory)
    ## 32            Major Subjects (Compulsory)
    ## 33            Major Subjects (Compulsory)
    ## 34            Major Subjects (Compulsory)
    ## 35            Major Subjects (Compulsory)
    ## 36            Major Subjects (Compulsory)
    ## 37            Major Subjects (Compulsory)
    ## 38            Major Subjects (Compulsory)
    ## 39            Major Subjects (Compulsory)
    ## 40            Major Subjects (Compulsory)
    ## 41            Major Subjects (Compulsory)
    ## 42            Major Subjects (Compulsory)
    ## 43            Major Subjects (Compulsory)
    ## 44            Major Subjects (Compulsory)
    ## 45            Major Subjects (Compulsory)
    ## 46     Major Subjects (Entirely Elective)
    ## 47     Major Subjects (Entirely Elective)
    ## 48     Major Subjects (Entirely Elective)
    ## 49     Major Subjects (Entirely Elective)
    ## 50     Major Subjects (Entirely Elective)
    ## 51     Major Subjects (Entirely Elective)
    ## 52     Major Subjects (Entirely Elective)
    ## 53     Major Subjects (Entirely Elective)
    ## 54     Major Subjects (Entirely Elective)
    ## 55     Major Subjects (Entirely Elective)
    ## 56     Major Subjects (Entirely Elective)
    ## 57     Major Subjects (Entirely Elective)
    ## 58     Major Subjects (Entirely Elective)
    ## 59     Major Subjects (Entirely Elective)
    ## 60                       Basic Subjects 1
    ## 61                       Basic Subjects 1
    ## 62      International General Education 2
    ## 63                Second Foreign Language
    ## 64                Second Foreign Language
    ## 65      Basic Major Subjects (Compulsory)
    ## 66 Basic Major Subjects (Partly Elective)
    ## 67            Major Subjects (Compulsory)
    ## 68            Major Subjects (Compulsory)
    ## 69     Major Subjects (Entirely Elective)
    ## 70     Major Subjects (Entirely Elective)
    ## 71     Major Subjects (Entirely Elective)
    ##                                           Course.Name Credits Year.Completed
    ## 1                                  Academic Writing I       2           2017
    ## 2                                 Presentation Skills       2           2017
    ## 3                      Computers in Language Learning       2           2017
    ## 4                                 Science and Society       2           2017
    ## 5  International Communication Seminar (Japanese) 103       2           2017
    ## 6  International Communication Seminar (Japanese) 203       2           2018
    ## 7  International Communication Seminar (Japanese) 303       2           2018
    ## 8                               Japanese Language 101       1           2017
    ## 9                               Japanese Language 102       1           2017
    ## 10                              Japanese Language 201       1           2018
    ## 11                              Japanese Language 202       1           2018
    ## 12                              Japanese Language 301       1           2018
    ## 13                              Japanese Language 302       1           2018
    ## 14                               Information Literacy       2           2017
    ## 15                                  Health & Sports 1       1           2017
    ## 16                                  Health & Sports 2       1           2018
    ## 17                             Introductory Biology 1       2           2017
    ## 18                           Introductory Chemistry 1       2           2017
    ## 19                             Introductory Physics 1       2           2017
    ## 20                          Basic Biology Experiments       1           2018
    ## 21                          Basic Physics Experiments       1           2018
    ## 22                             Introductory Biology 2       2           2018
    ## 23                           Introductory Chemistry 2       2           2018
    ## 24                             Introductory Physics 2       2           2018
    ## 25                                      Mathematics 2       2           2018
    ## 26                 Introductory Chemistry Experiments       1           2018
    ## 27          Exercise Session (Introductory Biology 1)       2           2017
    ## 28          Exercise Session (Introductory Biology 2)       2           2018
    ## 29        Exercise Session (Introductory Chemistry 1)       2           2017
    ## 30                     Exercise Session (Mathematics)       2           2017
    ## 31    General Guidelines for Safety in the Laboratory       1           2018
    ## 32                                     Biochemistry 1       2           2019
    ## 33                                     Bioinformatics       2           2018
    ## 34                                     Cell Biology 1       2           2018
    ## 35                                Organic Chemistry 1       2           2018
    ## 36                               Physical Chemistry 1       2           2018
    ## 37                  Exercise Session (Bioinformatics)       2           2018
    ## 38                  Exercise Session (Biochemistry 1)       2           2019
    ## 39                  Exercise Session (Cell Biology 1)       2           2018
    ## 40             Exercise Session (Organic Chemistry 1)       2           2018
    ## 41            Exercise Session (Physical Chemistry 1)       2           2018
    ## 42                             Analytical Chemistry 1       1           2018
    ## 43           Exercise Session(Analytical Chemistry 1)       1           2018
    ## 44                              Inorganic Chemistry 1       1           2018
    ## 45            Exercise Session(Inorganic Chemistry 1)       1           2018
    ## 46                     Combined Major Basic Seminar 2       1           2018
    ## 47                                     Cell Biology 2       2           2019
    ## 48                                 Molecular Genetics       2           2019
    ## 49                                Organic Chemistry 2       2           2019
    ## 50                                Organic Chemistry 3       2           2019
    ## 51                     Combined Major Honor Seminar 4       1           2019
    ## 52              Exercise Session (Molecular Genetics)       2           2019
    ## 53                  Exercise Session (Cell Biology 2)       2           2019
    ## 54             Exercise Session (Organic Chemistry 2)       2           2019
    ## 55             Exercise Session (Organic Chemistry 3)       2           2019
    ## 56                             Analytical Chemistry 2       1           2019
    ## 57           Exercise Session(Analytical Chemistry 2)       1           2019
    ## 58                             Analytical Chemistry 3       1           2019
    ## 59           Exercise Session(Analytical Chemistry 3)       1           2019
    ## 60                           Critical Thinking Skills       2           2017
    ## 61     Second Language Learning with Online Resources       2           2018
    ## 62 International Communication Seminar (Japanese) 403       2           2019
    ## 63                              Japanese Language 401       1           2019
    ## 64                              Japanese Language 402       1           2019
    ## 65                                      Mathematics 1       2           2017
    ## 66        Exercise Session (Introductory Chemistry 2)       2           2018
    ## 67                     Combined Major Basic Seminar 1       1           2017
    ## 68                  Chemistry & Biology Experiments 1       3           2019
    ## 69                  Chemistry & Biology Experiments 2       3           2019
    ## 70                     Combined Major Honor Seminar 5       1           2019
    ## 71                          Marine Biology Field Work       2           2018
    ##    Semester.Completed grade.in.words sub_gpa tol_gpa
    ## 1         Winter Term              S       4       8
    ## 2         Winter Term              S       4       8
    ## 3         Winter Term              S       4       8
    ## 4         Winter Term              S       4       8
    ## 5         Winter Term              S       4       8
    ## 6         Summer Term              S       4       8
    ## 7         Winter Term              S       4       8
    ## 8         Winter Term              S       4       4
    ## 9         Winter Term              S       4       4
    ## 10        Summer Term              S       4       4
    ## 11        Summer Term              S       4       4
    ## 12        Winter Term              S       4       4
    ## 13        Winter Term              S       4       4
    ## 14        Winter Term              S       4       8
    ## 15        Winter Term              S       4       4
    ## 16        Summer Term              S       4       4
    ## 17        Winter Term              S       4       8
    ## 18        Winter Term              S       4       8
    ## 19        Winter Term              S       4       8
    ## 20        Summer Term              S       4       4
    ## 21        Summer Term              S       4       4
    ## 22        Summer Term              S       4       8
    ## 23        Summer Term              S       4       8
    ## 24        Summer Term              S       4       8
    ## 25        Summer Term              S       4       8
    ## 26        Spring Term              S       4       4
    ## 27        Winter Term              S       4       8
    ## 28        Summer Term              S       4       8
    ## 29        Winter Term              S       4       8
    ## 30        Winter Term              S       4       8
    ## 31        Summer Term              S       4       4
    ## 32        Summer Term              S       4       8
    ## 33        Winter Term              S       4       8
    ## 34        Winter Term              S       4       8
    ## 35        Winter Term              S       4       8
    ## 36        Winter Term              S       4       8
    ## 37        Winter Term              S       4       8
    ## 38        Summer Term              S       4       8
    ## 39        Winter Term              S       4       8
    ## 40        Winter Term              S       4       8
    ## 41        Winter Term              S       4       8
    ## 42        Winter Term              S       4       4
    ## 43        Winter Term              S       4       4
    ## 44        Winter Term              S       4       4
    ## 45        Winter Term              S       4       4
    ## 46        Summer Term              S       4       4
    ## 47        Summer Term              S       4       8
    ## 48        Winter Term              S       4       8
    ## 49        Summer Term              S       4       8
    ## 50        Winter Term              S       4       8
    ## 51        Summer Term              S       4       4
    ## 52        Winter Term              S       4       8
    ## 53        Summer Term              S       4       8
    ## 54        Summer Term              S       4       8
    ## 55        Winter Term              S       4       8
    ## 56        Summer Term              S       4       4
    ## 57        Spring Term              S       4       4
    ## 58        Winter Term              S       4       4
    ## 59        Winter Term              S       4       4
    ## 60        Winter Term              A       3       6
    ## 61        Summer Term              A       3       6
    ## 62        Summer Term              A       3       6
    ## 63        Summer Term              A       3       3
    ## 64        Summer Term              A       3       3
    ## 65        Winter Term              A       3       6
    ## 66        Summer Term              A       3       6
    ## 67        Winter Term              A       3       3
    ## 68        Summer Term              A       3       9
    ## 69        Winter Term              A       3       9
    ## 70        Winter Term              A       3       3
    ## 71        Summer Term              A       3       6

calculate average gpa
---------------------

    total_points <- sum(grades$tol_gpa)
    total_credits <- sum(grades$Credits)
    average_gpa <- total_points / total_credits

    print(paste0("My average GPA up til now is: ", average_gpa))

    ## [1] "My average GPA up til now is: 3.8135593220339"
