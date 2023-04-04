library(rmarkdown)


# Art Listing Id's from Production DB
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_data_pull.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_data_pull.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)

