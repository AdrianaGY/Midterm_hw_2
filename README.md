#Midterm Project 2: GitHub

## Instructions 
This repository contains the data, code, and outputs for the Midterm Project #2. 

## Initial code description

`code/01_make_table1.R`
- Generates a table summarizing the `CLASIFFICATION_FINAL` variable
  (counts and percentages for each classification category).
- Output is saved as `classification_summary.csv` in the `output/tables/` folder.

`code/01_make_figure1.R`
- Generates a bar plot showing the distribution of the `CLASIFFICATION_FINAL` variable.
- Output is saved as `classification_distribution.png` in the `output/figures/` folder.

`code/comorbidities_analysis.R`
- Generates a table about CFR comparison with/without comorbidities and a bar chart of the top five comorbidities (%).
- First output (table) is saved as 'cfr_by_comorbidity.rds' in the output/tables/ folder.
- Second output is saved as 'comorbidity_prevalence.png'in the output/figures/ folder.

`code/03_make_table3.R`
- Generates a table about mortality distribution.
- Output is saved as 'mortality.rds' in the output/tables/ folder.

`code/03_make_figure3.R`
- Generates a side-by-side bar plot comparing mortality to ICU admission.
- Output is saved as 'sbs_bar_admit.png' in the output/figures/ folder.

`code/Pneumonia_Pttype.R`
- Generates a table to summarize pneumonia by age and a table to represent hospitalization rates by age
- Output is saved as 'Pneumonia_status.rds' and 'patient_type.rds' in the output/tables/ folder.
- It also generates 2 figures: a bar chart of pneumonia across age groups and a bar chart or boxplot of patient type variable across age groups
- Output 2 is saved as 'Pneumonia_age.png', and 'PatientType_age.png' in the output/figures/ folder.

`code/05_make_table6.R`
- Generates a table to compare CFR between males and females
- Output is saved as 'cfr_by_sex.rds' in the output/tables/ folder.

`code/05_make_figure7.R`
- Generates a histogram of age distribution
- Output is saved as 'age_distribution.png' in the output/figures/ folder.
