
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
  tab_source_note(md("*AV = aortic valve; MV = mitral valve*")) |> 
  tab_options(
    table.font.size = px(9)   # try 8–11 px range
  )


## Attempting to save table ------------------------------------------------



# Exporting using webshot2 package
gtsave(
  study_cohort_subset_data,
  "output/tables/2026-05-03_meta-data-for-bsi-imaging.png",
  expand = 10
)
) # Does not work

# Using pagedown package instead:
# Lagre som HTML først
gtsave(study_cohort_subset_data, "midlertidig.html")

# Bruk pagedown for å konvertere HTML til bilde
pagedown::chrome_print("midlertidig.html", output = "output/tables/2026-05-03_meta-data-for-bsi-imaging.png")
# This also does not work.

# I now try to save as pdf
gtsave(study_cohort_subset_data, "output/tables/2026-05-03_meta-data-for-bsi-imaging.pdf")


## Attempting to split the table, for saving  -------------------------------------------

gt_split_rows_side_by_side <- function(
    data,
    split_at = NULL,          # row index to split
    n_cols = 2,               # number of panels (default 2)
    rows_per_panel = NULL,    # optional override
    gt_fun = gt::gt,
    gt_args = list(),
    gap = "40px",
    align_top = TRUE
) {
  stopifnot(is.data.frame(data))
  
  n <- nrow(data)
  
  # Determine row splits
  if (!is.null(rows_per_panel)) {
    idx <- split(seq_len(n), ceiling(seq_len(n) / rows_per_panel))
  } else if (!is.null(split_at)) {
    idx <- list(
      seq_len(split_at),
      seq(split_at + 1, n)
    )
  } else {
    idx <- split(seq_len(n), cut(seq_len(n), n_cols, labels = FALSE))
  }
  
  # Build gt tables
  html_list <- lapply(idx, function(i) {
    chunk <- data[i, , drop = FALSE]
    gt_obj <- do.call(gt_fun, c(list(data = chunk), gt_args))
    gt::as_raw_html(gt_obj)
  })
  
  # Layout
  htmltools::browsable(
    htmltools::div(
      style = paste0(
        "display:flex;",
        "gap:", gap, ";",
        if (align_top) "align-items:flex-start;" else ""
      ),
      lapply(html_list, function(h) {
        htmltools::div(
          htmltools::HTML(h),
          style = "flex:1;"
        )
      })
    )
  )
}

study_cohort_subset_data_2 <-  study_cohort_data |> 
  select(id, study_group, hfr_bsi, acoustic_window, heart_rhythm, valve_status, other_pathology_av, pathology_mv)


gt_split_rows_side_by_side(study_cohort_subset_data_2)

# Now trying to highlight rows and make captions

study_cohort_subset_data_2 |> 
  gt() |> 
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
  tab_source_note(md("*AV = aortic valve; MV = mitral valve*")) |> 
  tab_options(
    table.font.size = px(10)   # try 8–11 px range
  )


# Creating a codebook for the meta data on BSI imaging --------------------

vtable(study_cohort_data)

