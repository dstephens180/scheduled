library(rmarkdown)
library(rsconnect)


rsconnect::setAccountInfo(
  name='msv-analytics',
  token='5A59317284D8C8A170ED06710E4C3367',
  secret='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# upload Customer Network Analysis
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName = "tns_customer_networks_qYoPP1O2yVYyeTjJ6ay64D9qcurzYu37",
  appFiles = c('02_shiny_tns_customer_network_connections.Rmd',
               'www/tns-small.png',
               '00_data/tns_customer_networks.rds',
               '00_data/tns_customer_network_tbl_graph.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F)



# upload Survey Monkey Sentiment Analysis
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName = "survey_monkey_sentiment_analysis_0i7xueHbqT0YxSmcKZNCqKWsr3",
  appFiles = c('03_shiny_survey_monkey_sentiment_analysis.Rmd',
               'www/tns-small.png',
               '00_data/survey_monkey_raw.rds',
               '00_data/survey_monkey_sentiment_by_account_tbl.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F)
