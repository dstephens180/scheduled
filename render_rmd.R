library(rmarkdown)


# MariaDB Extract
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_mariadb_data_pull.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_mariadb_data_pull.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Calendar listings wrangled
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\01_calendar_listings_wrangled.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\01_calendar_listings_wrangled.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Write to rentaldata_dev database
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentaldata_dev_data.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentaldata_dev_data.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)
