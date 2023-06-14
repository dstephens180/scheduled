library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()



# Customer Network/Segment Analysis
rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')


rsconnect::deployApp(
  appDir   = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName  = "tns_customer_churn_analysis_xgygdowSH1aCv1Vm0XJNMusVo5SiQ7nP",
  appFiles = c('01_shiny_customer_churn_analysis.Rmd',
               'www/tns-small.png',
               '00_data/customer_correlation_data.rds',
               '00_data/current_customers_churn_data.rds',
               '00_data/customer_spend_by_state_sf.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



link <- "https://msv-analytics.shinyapps.io/tns_customer_churn_analysis_xgygdowSH1aCv1Vm0XJNMusVo5SiQ7nP/"



body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Customer Retention App** was successfully deployed to shinyapps.io on {date_time}.

    {link}"
  ))

email <- blastula::compose_email(body = body_text)


# send the email
email %>%
  blastula::smtp_send(
    from = "dstephens@tnsinc.com",
    to = "dstephens@tnsinc.com",
    subject = stringr::str_glue("Customer Retention App"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))
