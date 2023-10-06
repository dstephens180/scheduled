library(keyring)
library(blastula)



blastula::create_smtp_creds_key(
  id      = "gmail",
  user    = "dstephens@tnsinc.com",
  host    = "smtp.gmail.com",
  port    = 465,
  use_ssl = T
)


# Go to https://myaccount.google.com/security, type "app passwords" in the search and click the first selection.
# Mail >> Windows (Computer)
# copy the new password string
# run code below
# paste into the password request here in R.
# the new file will overwrite the old one you always use here.
# ... occasionally this resets; yeah, it's annoying.

create_smtp_creds_file(
  file    = "gmail_creds",
  user    = "dstephens@tnsinc.com",
  host    = "smtp.gmail.com",
  port    = 465,
  use_ssl = T
)
