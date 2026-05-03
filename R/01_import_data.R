
# Importing Excel files with meta data ------------------------------------

study_cohort_data <- read_excel("data/2026-05-03_BSI-and-TDI_SAS-F-5.xlsx", sheet = "Overview of BSI and TDI data",
                                 na = c("NA", "NAA", "")) |> 
  clean_names()
