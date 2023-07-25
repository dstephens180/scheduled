library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()

rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Customer Retention/Churn Analysis
rsconnect::deployApp(
  appDir   = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName  = "tns_customer_churn_analysis_xgygdowSH1aCv1Vm0XJNMusVo5SiQ7nP",
  appFiles = c('01_shiny_customer_churn_analysis.Rmd',
               'www/tns-small.png',
               '00_data/customer_correlation_data.rds',
               '00_data/customer_products_owned.rds',
               '00_data/data_prepared_h2o.rds',
               '00_data/customer_spend_by_state_sf.rds',
               '00_data/best_model/latest_best_h2o_model'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')




link_churn <- "https://msv-analytics.shinyapps.io/tns_customer_churn_analysis_xgygdowSH1aCv1Vm0XJNMusVo5SiQ7nP/"




body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Customer Retention App** was successfully deployed to shinyapps.io on {date_time}.

    {link_churn}"
  ))


email <- blastula::compose_email(body = body_text)


# send the email
email %>%
  blastula::smtp_send(
    from = "dstephens@tnsinc.com",
    to = "dstephens@tnsinc.com",
    subject = stringr::str_glue("Shiny: Customer Retention App"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))
