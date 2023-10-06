library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_compset_tool <- "https://msv-analytics.shinyapps.io/user_compset_selection_tool_ueV6tc76nFqBm8ufjHHFWrHbg1QyoVSR/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Compset Selection Tool
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\shiny",
  appName = "user_compset_selection_tool_ueV6tc76nFqBm8ufjHHFWrHbg1QyoVSR",
  appFiles = c('shiny_user_compset_selection.Rmd',
               'www/Rented-logo-small.png',
               'art_listing_ids_cleaned.parquet',
               'comps_full_geomarket_details_tbl.parquet'
  ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')


Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Compset Selection Tool** was successfully deployed on {date_time}.

    {link_compset_tool}"
  ))

email <- blastula::compose_email(body = body_text)



# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Compset Selection Tool"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))




