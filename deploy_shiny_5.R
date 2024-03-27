library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()


link_compset_tool <- "https://msv-analytics.shinyapps.io/shiny_kdd_direct_pms_sszqoRMwesSARXErmCyJpKdXmCwIrD7O/"



rsconnect::setAccountInfo(
  name   ='msv-analytics',
  token  ='5A59317284D8C8A170ED06710E4C3367',
  secret ='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')



# Compset Selection Tool
rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\market-segmentation",
  appName = "shiny_kdd_direct_pms_sszqoRMwesSARXErmCyJpKdXmCwIrD7O",
  appFiles = c('shiny_kdd_direct_pms.Rmd',
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

    The **Market Benchmarking App** was successfully deployed on {date_time}.

    {link_compset_tool}"
  ))

email <- blastula::compose_email(body = body_text)



# send the email
email %>%
  blastula::smtp_send(
    from        = "dstephens@tnsinc.com",
    to          = "dstephens@tnsinc.com",
    subject     = stringr::str_glue("Shiny: Market Benchmarking"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))




