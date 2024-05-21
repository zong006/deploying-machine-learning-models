#!/bin/bash

# Install expect utility
sudo apt-get update && sudo apt-get install -y expect

cd section-07-ci-and-publishing/house-prices-api

# Authenticate with Railway using the token
railway login --token "$RAILWAY_TOKEN"

# Run railway init
expect -c '
spawn railway init
expect "? Project Name "
send "house\r"  
expect {
    "Leave blank to generate a random name" {
        send "\r"
    }
}
expect eof
'

# Run railway link
expect -c '
spawn railway link
expect "? Select a project"
send "house\r"  
expect eof
'

# Run railway up --detach
railway up --detach
