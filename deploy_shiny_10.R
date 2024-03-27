library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_app <- "https://msv-analytics.shinyapps.io/price_elasticity_s65pKCB9RMDsLjLBdhHlPGbcMW1bco95/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Compset Selection Tool
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\shiny",
  appName = "price_elasticity_s65pKCB9RMDsLjLBdhHlPGbcMW1bco95",
  appFiles = c('shiny_price_elasticity.Rmd',
               'www/tns-small.png',
               'config.yml',
               'art_listing_ids_cleaned.parquet'
  ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')


Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Price Elasticity App** was successfully deployed on {date_time}.

    {link_app}"
  ))

email <- blastula::compose_email(body = body_text)



# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Price Elasticity App"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))




