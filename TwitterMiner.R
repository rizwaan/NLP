# Twitter Text Mining####  

# Source : http://www.rdatamining.com/examples/text-mining
# An example on text mining of Twitter data with R packages twitteR, tm and wordcloud. Package twitteR provides access to Twitter data, tm provides functions for text mining, and wordcloud visualizes the result with a word cloud.


# Library Management ####

install.packages("twitteR")
install.packages("base64enc")
library(twitteR)

# Setup Twitter Connection ####
# How To: Register\Create a twitter app at https://apps.twitter.com/app
# Get the api keys from same page
# Set the Callback URL on that page to http://127.0.0.1:1410
# This makes sure the below oauth call works with browser based auth.
# Browser base auth opens a new brwser for verification.(First 2 params only)
# Direct connection requires all 4 params

consumer_key<-"a7kImhv0vCVC8sXJS8TRbzllQ" 
consumer_secret<- "txtEX8L6Zl2fQ9BeXIItuMaQ3ml35LbllfylIMlD8KiikLcUwP"
access_token<-"14781890-RTYwgWgSjSxGbp9AioMP8lSMZ1IRmAh8yo8LwDn3O" 
access_secret<-"0BUFargyVtYVkLDEtAGVtlKL3pSmjfwzTresre2yh6ye4"  


setup_twitter_oauth(
                      consumer_key 
                      , consumer_secret
                      , access_token 
                      , access_secret
                    )

userTimeline("BLRNawaab",n=100) 
