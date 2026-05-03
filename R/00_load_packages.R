# Importing relevant libraries for the project

library(tidyverse)
library(tidyr)
library(dplyr)
library(readr) 
library(readxl)        # For importing data from excel files
library(tidyxl)        # an alternative to library(readxl)
library(openxlsx2)     # For importing password protected excel files
library(excel.link)    # For importing password protected excel files
library(haven)         # For importing SPSS files (.sav)
library(lubridate)     # For handling of dates and time calculations
library(janitor)
library(sjlabelled)    # For labelling variables and values
library(labelled)      # For labelling
library(Hmisc)         # For labelling variables and values
library(vtable)        # For variable documentation
library(summarytools)  # For descriptive statistics
library(gtsummary)     # For statistics
library(vistime)       # For visualizing patient timelines
library(sjmisc)        # For descriptive statistics
library(skimr)         # For descriptive statistics
library(gridExtra)     # For converrting dataframes to tables into "graphical tables"
library(gtExtras)      # For making tables, it includes the gt package.
library(webshot2)      # For help to export images created in gt(). Cannot make it work on this PC.
library(pagedown)      # AN alternative to webshot2 package for storing gt-tables as pictures.
library(RColorBrewer)  # To get nice color palettes to use in R
library(gapminder)     # A data set to work with
library(vistime)       # For visualizing patient timelines
library(ggplot2)       # For visualizations
library(scales)        # for label_number and pretty_breaks functions
library(quarto)        # For reporting in quarto format
library(report)        # For help to automate reports / rmarkdown
library(rstudioapi)
library(lintr)         # For code quality checks. Tells what is wrong, but does not fix it. Run lintr::lint("file.R")
library(styler)        # For code styling and linting. Use styler::style_active_file() to style the active file in RStudio. 
library(targets)       # For workflow management and reproducibility. Use targets::tar_make() to run the pipeline defined in _targets.R.
library(renv)          # For managing R package dependencies and ensuring reproducibility. Use renv::init(), renv::install(), renv::snapshot() and renv::restore() 