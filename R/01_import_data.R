
# Importing Excel files with meta data ------------------------------------

bsi_data_characteristics <- read_excel("data/2026-03-28_BSI-and-TDI_SAS-F-5.xlsx", sheet = "Overview of BSI and TDI data",
                                 na = c("NA", "NAA", "")) |> 
  clean_names()
