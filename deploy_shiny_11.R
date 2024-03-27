library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_app <- "https://msv-analytics.shinyapps.io/shiny-user-selected-comps-7Fq8btlQRVIGr0JjeHZ1GsU7krvWXHcv/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Compset Selection Tool
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\shiny-user-selected-comps",
  appName = "shiny-user-selected-comps-7Fq8btlQRVIGr0JjeHZ1GsU7krvWXHcv",
  appFiles = c('global.R',
               'ui.R',
               'server.R',
               'www/tns-small.png',
               'config.yml'
  ),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')


Sys.sleep(5)


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Full Shiny App: User-Selected Compsets** was successfully deployed on {date_time}.

    {link_app}"
  ))

email <- blastula::compose_email(body = body_text)



# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Full Shiny: User-Selected Compsets"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))




