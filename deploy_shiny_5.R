library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_compset_tool <- "https://msv-analytics.shinyapps.io/shiny_kdd_direct_pms_sszqoRMwesSARXErmCyJpKdXmCwIrD7O/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Compset Selection Tool
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\market-segmentation",
  appName = "shiny_kdd_direct_pms_sszqoRMwesSARXErmCyJpKdXmCwIrD7O",
  appFiles = c('shiny_kdd_direct_pms.Rmd',
               'www/Rented-logo-small.png',
               '00_data/my_selected_markets_tbl.rds',
               '00_data/all_vacation_area_markets_tbl.rds',
               '02_historical_market_benchmark/market_forecasts/adr_forecast.rds',
               '02_historical_market_benchmark/market_forecasts/averageBookingWindow_forecast.rds',
               '02_historical_market_benchmark/market_forecasts/occupancy_forecast.rds',
               '02_historical_market_benchmark/market_forecasts/revenue_per_unit_forecast.rds',
               '02_historical_market_benchmark/2015_rollup_metrics.rds',
               '02_historical_market_benchmark/2016_rollup_metrics.rds',
               '02_historical_market_benchmark/2017_rollup_metrics.rds',
               '02_historical_market_benchmark/2018_rollup_metrics.rds',
               '02_historical_market_benchmark/2019_rollup_metrics.rds',
               '02_historical_market_benchmark/2020_rollup_metrics.rds',
               '02_historical_market_benchmark/2021_rollup_metrics.rds',
               '02_historical_market_benchmark/2022_rollup_metrics.rds',
               '02_historical_market_benchmark/2023_rollup_metrics.rds'

  ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')


Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Market Benchmarking App** was successfully deployed on {date_time}.

    {link_compset_tool}"
  ))

email <- blastula::compose_email(body = body_text)



# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Market Benchmarking"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))




