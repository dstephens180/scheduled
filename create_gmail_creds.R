library(keyring)
library(blastula)



blastula::create_smtp_creds_key(
  id      = "gmail",
  user    = "dstephens@tnsinc.com",
  host    = "smtp.gmail.com",
  port    = 465,
  use_ssl = T
)


# Go to https://myaccount.google.com/security, type "app password" in the search and click the first selection.
# it's important to create app password in your Google account.
# then you need to paste the new password string into the password request here in R.
# run the code below and you'll be prompted to enter the password.
# occasionally this resets.

create_smtp_creds_file(
  file    = "gmail_creds",
  user    = "dstephens@tnsinc.com",
  host    = "smtp.gmail.com",
  port    = 465,
  use_ssl = T
)
