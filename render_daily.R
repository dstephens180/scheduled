library(rmarkdown)
library(rsconnect)


# ARR Revenue v2 - Feature Engineering
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\00_feature_engineering_arr_revenue_v2.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\00_feature_engineering_arr_revenue_v2.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# TNS Churn Analysis
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\01_tns_customer_churn_analysis.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\01_tns_customer_churn_analysis.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)


# TNS Customer Network Analysis
Sys.setenv(RSTUDIO_PANDOC = "C:\\Program Files\\Pandoc")
rmarkdown::render(
  input       = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\02_tns_customer_network_analysis.Rmd",
  output_file = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn\\02_tns_customer_network_analysis.html",
  output_dir  = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\00_archive"
)
