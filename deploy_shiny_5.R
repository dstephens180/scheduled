library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_vtrips_dashboard <- "https://msv-analytics.shinyapps.io/vtrips_dashboard_yOh5m7fPZLrR4dLNsfn8ymtmQzkL6soD/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Vtrips Dashboard
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\artr_replica\\shiny",
  appName = "vtrips_dashboard_yOh5m7fPZLrR4dLNsfn8ymtmQzkL6soD",
  appFiles = c('shiny_model_focus_vtrips.Rmd',
               'www/Rented-logo-small.png',
               'config.yml',
               'art_groups_cleaned.rds',
               'vtrips_art_listing_ids_cleaned.rds',
               'art_listings_bookings.parquet',
               'vtrips_comps_full_geomarket_details_tbl.rds',
               'event_data.rds',
               'booked_days_out.rds'
  ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Vtrips Dasbhoard** was successfully deployed on {date_time}.

    {link_vtrips_dashboard}"
  ))

email <- blastula::compose_email(body = body_text)




# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Vtrips Dashboard"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))





