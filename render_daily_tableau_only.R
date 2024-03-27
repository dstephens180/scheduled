library(rmarkdown)
library(rsconnect)
library(reticulate)


# Tableau Data Extract
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\prefect_automation\\00_tableau_data_extract.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\prefect_automation\\00_tableau_data_extract.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Clone channel_reservation_reviews to data science db
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\tns-customer-reviews\\00_save_file_on_ds_db.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\tns-customer-reviews\\00_save_file_on_ds_db.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)

