library(here)
library(gtsummary)
here::i_am("code/03_make_table3.R")

data <- read.csv(
  file = here::here("data/covid_sub.csv")
)
data$mortality <- ifelse(is.na(data$DATE_DIED) , 0, 1)
data$icu_admission <- ifelse(is.na(data$ICU), NA, ifelse(data$ICU == "Yes", 2, 1 ))
data$intubation <- ifelse(is.na(data$INTUBED), NA, ifelse(data$INTUBED == "Yes", 2, 1 ))
table3 <-  data |> 
  select("intubation", "icu_admission", "mortality") |> 
  tbl_summary(by = mortality) |> 
  modify_spanning_header(c("stat_1", "stat_2") ~  "Mortality") |> 
  add_n() |> 
  add_overall() |> 
  add_p()

saveRDS(
  table3,
  file = here::here("output/tables/mortality.rds")
)
