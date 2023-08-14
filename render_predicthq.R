library(rmarkdown)


# Get all unique buffered geocodes
# Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
# rmarkdown::render(
#   input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\predicthq-streamlit\\00_unique_buffered_geocodes.Rmd",
#   output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\predicthq-streamlit\\00_unique_buffered_geocodes.html",
#   output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
# )


# Run the Python API Connection with PredictHQ -- must be run last, as rmarkdown will run all code after python opens.
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\predicthq-streamlit\\01_api_connection.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\predicthq-streamlit\\01_api_connection.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)

