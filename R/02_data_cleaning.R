
# Labelling variables -----------------------------------------------------

# Labelling variables in study_cohort_data
study_cohort_data <- study_cohort_data |> 
  set_variable_labels(
    id                     = "Study ID",
    echo_exam_date         = "Date of echo exam",
    scan_assist_pro_v      = "Version of Scan Assist Pro",
    study_group            = "Study group",
    heart_rhythm           = "Heart rhythm",
    valve_status           = "AV status",
    acoustic_window        = "Acoustic window qual.",
    hfr_bsi                = "Quality of BSI data",
    bsi_acquisition_method = "Methos of aqcuisition",
    bsi_protocol_version   = "Version of BSI protocol",
    other_pathology_av     = "Other AV pathology",
    pathology_mv           = "MV pathology")



# Labelling values --------------------------------------------------------


# Labelling values for some of the variables in study_cohort_data. 
study_cohort_data <- study_cohort_data |>
  set_value_labels(
    study_group = c(
      "healthy control " = 0, 
      "aortic stenosis patient" = 1), 
    heart_rhythm = c(
      "sinus rhythm" = 0, 
      "sinus arrhythmia" = 1,
      "atrial fibrillation" = 2,
      "atrial flutter" =3,
      "other rhythm" = 4),
    valve_status = c(
      "native aortic valve" = 0,
      "tavr" = 1,
      "savr" = 2),
    acoustic_window = c(
      "Good acoustic window overall" = 0, 
      "Reduced for parasternal view" = 1,
      "Reduced for apical views" = 2,
      "Reduced for subcostal view" = 3,
      "Reduced from bith parasternal and apical views" = 4,
      "Severily reduced" = 5),
    hfr_bsi = c(
      "Performed with good quality" = 0, 
      "Performed with suboptimal quality, or inclomplete" = 1,
      "Not performed" = 2),
    other_pathology_av = c(
      "No other aortic valve pathology (or only minor AR)" = 0, 
      "Mild aortic regurgitation" = 1,
      "Moderate aortic regurgitation" = 2,
      "Severe aortic regurgitation" = 3,
      "Aortic valve calcification without stenosis" = 4,
      "AV stenosis (in AV prosthesis)" = 5),
    pathology_mv = c(
      "Normal mitral valve (or only minor MR)" = 0, 
      "Mild mitral regurgitation" = 1,
      "Moderate mitral regurgitation" = 2,
      "Severe mitral regurgitation" = 3,
      "Mitral valve calcification" = 4,
      "Mitral valve stenosis" = 5),
    bsi_acquisition_method = c(
      "Retrospective" = 0, 
      "Prospective" = 1),
    bsi_protocol_version = c(
      "1st protocol" = 0, 
      "2nd protocol" = 1,
      "3rd protocol" = 2,
      "4th protocol" = 3),
    )
