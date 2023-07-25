library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()

rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Customer Network/Segment Analysis
rsconnect::deployApp(
  appDir   = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName  = "tns_customer_networks_qYoPP1O2yVYyeTjJ6ay64D9qcurzYu37",
  appFiles = c('02_shiny_tns_customer_network_connections.Rmd',
               'www/tns-small.png',
               '00_data/tns_customer_networks.rds',
               '00_data/tns_customer_network_tbl_graph.rds',
               '00_data/customer_description_full.rds',
               '00_data/customer_correlation_data.rds',
               '00_data/tenure_full.rds',
               '00_data/spend_products_full.rds',
               '00_data/has_child_accounts.rds',
               '00_data/customer_lat_lon.rds',
               '00_data/survey_monkey_sentiment_by_account_tbl.rds',
               '00_data/customer_products_owned.rds',
               'py/clustering.py',
               'py/tsne.py',
               '.Rprofile'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')




link_network <- "https://msv-analytics.shinyapps.io/tns_customer_networks_qYoPP1O2yVYyeTjJ6ay64D9qcurzYu37/"




body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Customer Segment Analysis App** was successfully deployed to shinyapps.io on {date_time}.

    {link_network}"
  ))


email <- blastula::compose_email(body = body_text)


# send the email
email %>%
  blastula::smtp_send(
    from = "dstephens@tnsinc.com",
    to = "dstephens@tnsinc.com",
    subject = stringr::str_glue("Shiny: Network Analysis"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))
