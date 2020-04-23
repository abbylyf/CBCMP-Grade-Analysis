library(dplyr)
library(readr)

grades <- read.csv("grades.csv")

grades.s <- grades%>%
  filter(grade.in.words == "S")%>%
  mutate(sub_gpa = 4)
grades.a <- grades%>%
  filter(grade.in.words == "A")%>%
  mutate(sub_gpa = 3)
grades <- grades.s%>%
  bind_rows(grades.a)

grades <- select(grades, Course.Sub.category, sub_gpa)

head(grades)

boxplot(sub_gpa~Course.Sub.category, data = grades)