library(rmarkdown)
library(rsconnect)
library(blastula)
library(tidyverse)

date_time <- blastula::add_readable_time()



# Survey Monkey Sentiment Analysis
rsconnect::setAccountInfo(
  name='msv-analytics',
  token='5A59317284D8C8A170ED06710E4C3367',
  secret='7+tvar0BSbNFdloTnP7cnnI8XdmZhY9Ke+s+adPv')


rsconnect::deployApp(
  appDir = "C:\\Users\\DavidStephens\\Desktop\\Github\\customer_churn",
  appName = "survey_monkey_sentiment_analysis_0i7xueHbqT0YxSmcKZNCqKWsr3",
  appFiles = c('03_shiny_survey_monkey_sentiment_analysis.Rmd',
               'www/tns-small.png',
               '00_data/survey_monkey_raw.csv',
               '00_data/survey_monkey_sentiment_by_account_tbl.rds'),
  server = 'shinyapps.io',
  forceUpdate = T,
  launch.browser = F,
  account = 'msv-analytics')



link <- "https://msv-analytics.shinyapps.io/survey_monkey_sentiment_analysis_0i7xueHbqT0YxSmcKZNCqKWsr3/"


body_text <-
  blastula::md(stringr::str_glue(
    "Good news!

    The **Survey Monkey Sentiment Analysis** was successfully deployed to shinyapps.io on {date_time}.

    {link}"))

email <- blastula::compose_email(body = body_text)


# send the email
email %>%
  blastula::smtp_send(
    from = "dstephens@tnsinc.com",
    to = "dstephens@tnsinc.com",
    subject = stringr::str_glue("Survey Monkey Sentiment App"),
    credentials = blastula::creds_file(file = "C:\\Users\\DavidStephens\\Desktop\\Github\\scheduled\\gmail_creds"))
