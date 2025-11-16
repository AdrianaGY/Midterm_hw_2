library(here)
library(ggplot2)
here::i_am("code/03_make_figure3.R")

data <- read.csv(
  file = here::here("data/covid_sub.csv")
)
data$mortality <- ifelse(is.na(data$DATE_DIED) , 0, 1)
data$icu_admission <- ifelse(is.na(data$ICU), NA, ifelse(data$ICU == "Yes", 1, 0 ))
data$intubation <- ifelse(is.na(data$INTUBED), NA, ifelse(data$INTUBED == "Yes", 1, 0 ))
sbs_bar_admit <- ggplot(data, aes(x = factor(icu_admission), fill = factor(mortality))) +
  geom_bar(position = "fill") +
  labs(
    x = "ICU Admission",
    y = "Proportion",
    fill = "Mortality"
  )
sbs_bar_intub <- ggplot(data, aes(x = factor(intubation), fill = factor(mortality))) +
  geom_bar(position = "fill") +
  labs(
    x = "Intubation",
    y = "Proportion",
    fill = "Mortality"
  )
sbs_bar_intub

ggsave(
  here::here("output/figures/sbs_bar_admit.png"),
  plot = sbs_bar_admit,
  device = 'png'
)

ggsave(
  here::here("output/figures/sbs_bar_intub.png"),
  plot = sbs_bar_intub,
  device = 'png'
)
