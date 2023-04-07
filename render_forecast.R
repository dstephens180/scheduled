library(rmarkdown)


# Nested Forecast from rentedrmsprod db
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)
