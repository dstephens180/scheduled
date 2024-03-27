library(rmarkdown)


### ART PRODUCTION PROCESS ###
# Art Listing Bookings from Production DB
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_art_listings_bookings.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_art_listings_bookings.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Art Listing Id's from Production DB
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_synced_only_data_pull.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_synced_only_data_pull.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Art Groups from Production DB
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_art_groups.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rentedrmsprod_art_groups.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# Geomarket Listing Id Details from rented_art
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rented_art_geomarket_full_comp_details.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_rented_art_geomarket_full_comp_details.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)





### KDD DEV PROCESS ###
# KDD Recohorting all new Art Listings (must go before 00_kdd_geomarket_full_comp_details below)
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\08_for_loop_recohort_each_listing.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\08_for_loop_recohort_each_listing.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# KDD Geomarket Listing Id Details
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_kdd_geomarket_full_comp_details.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_kdd_geomarket_full_comp_details.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


