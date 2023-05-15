library(rmarkdown)
library(rsconnect)


rsconnect::setAccountInfo(
  name='msv-analytics',
  token='5A59317284D8C8A170ED06710E4C3367',
  secret='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# --
# Customer Network/Segment Analysis
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName = "tns_customer_networks_qYoPP1O2yVYyeTjJ6ay64D9qcurzYu37",
  appFiles = c('02_shiny_tns_customer_network_connections.Rmd',
               'www/tns-small.png',
               '00_data/tns_customer_networks.rds',
               '00_data/tns_customer_network_tbl_graph.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



# --
# Survey Monkey Sentiment Analysis
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName = "survey_monkey_sentiment_analysis_0i7xueHbqT0YxSmcKZNCqKWsr3",
  appFiles = c('03_shiny_survey_monkey_sentiment_analysis.Rmd',
               'www/tns-small.png',
               '00_data/survey_monkey_raw.rds',
               '00_data/survey_monkey_sentiment_by_account_tbl.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



# --
# Shiny Model Focus
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\shiny",
  appName = "shiny_model_focus_5vrvyRo5mARtetyCGWdFkcKCUzxB2Yde",
  appFiles = c('shiny_model_focus.Rmd',
               'www/Rented-logo-small.png',
               'config.yml',
               'art_groups_cleaned.rds',
               'art_listing_ids_cleaned.parquet',
               'comps_full_geomarket_details_tbl.parquet'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')
