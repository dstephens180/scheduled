library(rmarkdown)


# Nested Forecast Year 1, from rentedrmsprod db
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast_year_1.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast_year_1.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Nested Forecast Year 2, from rentedrmsprod db
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast_year_2.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_forecast_year_2.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)
