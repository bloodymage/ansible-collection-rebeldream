require ["fileinto", "mailbox"];

if header :contains "Subject" [
                               "confirm your subscription",
                               "confirmation of subscription",
                               "subscription confirmation",
                               "please confirm subscription",
                               "confirmation instructions",
                                 "confirm mailing list subscription"
]
{
 fileinto :create "Signups";

 # Requires 3rd party plugin
 #expire "day" "10";

}
