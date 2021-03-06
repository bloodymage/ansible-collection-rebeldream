require ["variables", "envelope", "fileinto", "subaddress", "mailbox","regex"];

# ==================================================================================================
#
# Google
#
# mail-noreply@google.com
# noreply-daa26fef@plus.google.com
# notifications-googleplay@google.com
# privacy-noreply@google.com
# no-reply@accounts.google.com
#
# ==================================================================================================
if anyof (
          address :is "from" "no-reply@accounts.google.com",
          address :is "from" "googleaccount-noreply@google.com",
          address :is "from" "gmail-noreply@google.com",
          address :is "from" "forwarding-noreply@google.com",
          address :is "from" "noreply-716d5b22@plus.google.com",
          address :is "from" "accounts-noreply@google.com",
          address :is "from" "noreply-google-plus@google.com",
          address :is "from" "privacy-noreply@policies.google.com",
          address :is "from" "privacy-noreply@google.com"
          )
{
 fileinto :create "Archive/Google/Account";
  stop;
}

if anyof (
          address :is "from" "calendar-notification@google.com",
          address :is "from" "calendar-noreply@google.com"
          )
{
 fileinto :create "Archive/Google/Calendar";
  stop;
}

if anyof (
          address :is "from" "voice-noreply@google.com",
          address :contains "from" "@txt.voice.google.com"
          )
{
 fileinto :create "Archive/Google/Voice";
  stop;
}

if anyof (
          address :is "from" "noreply-googleplay@google.com",
          address :is "from" "googleplay-noreply@google.com"
          )
{
 fileinto :create "Archive/Google/Play";
  stop;
}

if anyof (
          address :contains "from" "@plus.google.com"
          )
{
 fileinto :create "Archive/Google/Plus";
  stop;
}

if anyof (
          address :is "from" "noreply-utos@google.com",
          address :is "from" "google-noreply@google.com",
          address :is "from" "news-noreply@google.com",
          address :is "from" "noreply@google.com",
          address :is "from" "photos-drive-noreply@google.com",
          address :is "from" "noreply@plus.google.com",
          address :contains "from" "google.com"
          )
{
 fileinto :create "Archive/Google";
  stop;
}
