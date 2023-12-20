library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_model_focus <- "https://msv-analytics.shinyapps.io/shiny_model_focus_5vrvyRo5mARtetyCGWdFkcKCUzxB2Yde/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Shiny Model Focus
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\shiny",
  appName = "shiny_model_focus_5vrvyRo5mARtetyCGWdFkcKCUzxB2Yde",
  appFiles = c('shiny_model_focus.Rmd',
               'www/tns-small.png',
               'config.yml',
               'art_listing_ids_cleaned.parquet',
               'kdd_comps_full_geomarket_details_tbl.parquet'
               ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Model Focus App** was successfully deployed on {date_time}.

    {link_model_focus}"
  ))

email <- blastula::compose_email(body = body_text)




# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Model Focus"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))



