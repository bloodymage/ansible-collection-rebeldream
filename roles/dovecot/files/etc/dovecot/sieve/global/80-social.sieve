require ["variables", "envelope", "fileinto", "subaddress", "mailbox","regex"];

# ==================================================================================================
#
# Facebook
#
# ==================================================================================================
if anyof (
          address :is "from" "notification+ozll=hv1@facebookmail.com",
          address :contains "from" "facebookmail.com"
          )
{
 fileinto :create "Archive/Facebook";
  stop;
}

# ==================================================================================================
#
# LinkedIn
#
# connections@linkedin.com
# emailconfirm@linkedin.com
# groups-noreply@linkedin.com
# invitations@linkedin.com
# invitations-noreply@linkedin.com
# jobs-listings@linkedin.com
# jobs-noreply@linkedin.com
# member@linkedin.com
# messages-noreply@bounce.linkedin.command
# messages-noreply@linkedin.com
# news@linkedin.com
# notifications-noreply@linkedin.com
# password@linkedin.com
# security-noreply@linkedin.com
# welcome@linkedin.com
#
# ==================================================================================================
if anyof (
          address :is "from" "invitations@linkedin.com",
          address :contains "from" "linkedin.com"
          )
{
 fileinto :create "Archive/LinkedIn";
  stop;
}

# ==================================================================================================
#
# Pinterest
#
# editorial@pinterest.com
# community@pinterest.com
# confirm@pintrest.com
# pinbot@pintrest.com
# weekly@pintrest.com
# news@pintrest.com
#
# ==================================================================================================
if anyof (
          address :contains "from" "pinterest.com"
          )
{
 fileinto :create "Archive/Pinterest";
  stop;
}

# ==================================================================================================
#
# Reddit
#
# ==================================================================================================
if anyof (
          address :is "from" "noreply@reddit.com",
          address :is "from" "noreply@redditmail.com"
          )
{
 fileinto :create "Archive/Reddit";
  stop;
}

# ==================================================================================================
#
# Twitter
#
# confirm@twitter.com
# verify@twitter.com
#
# ==================================================================================================
if anyof (
          address :contains "from" "twitter.com"
          )
{
 fileinto :create "Archive/Twitter";
  stop;
}

# ==================================================================================================
#
# Youtube
#
# ==================================================================================================
if anyof (
          address :is "from" "no-reply@youtube.com",
          address :is "from" "noreply@youtube.com"
          )
{
 fileinto :create "Archive/Google/Youtube";
  stop;
}
