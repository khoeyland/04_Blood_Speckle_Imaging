
# Creating a summary of meta data on BSI imaging in study -----------------

glimpse(study_cohort_data)

study_cohort_subset_data <-  study_cohort_data |> 
  select(id, study_group, hfr_bsi, acoustic_window, heart_rhythm, valve_status, other_pathology_av, pathology_mv) |> 
    gt()
  

study_cohort_subset_data |> 
  gt_highlight_rows(rows = id %in% c("30404", 
                                     "83354",
                                     "41820",
                                     "49675",
                                     "51844",
                                     "600",
                                     "55916",
                                     "127",
                                     "52979",
                                     "92849",
                                     "2213",
                                     "77705",
                                     "27190",
                                     "11360",
                                     "42379",
                                     "39156"
                                     ),
                    fill = "cyan") |> 
  tab_header("Meta data on BSI acquisitions") |> 
  tab_source_note(md("*AV = aortic valve; MV = mitral valve*"))


# Creating a codebook for the meta data on BSI imaging --------------------

vtable(study_cohort_data)

