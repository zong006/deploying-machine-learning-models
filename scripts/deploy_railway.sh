#!/bin/bash

cd section-07-ci-and-publishing/house-prices-api
# Run railway init
expect -c '
spawn railway init
expect "? Project Name "
send "$RAILWAY_PROJECT_NAME\r"  
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
send "$RAILWAY_PROJECT_NAME\r"  
expect eof
'

# Run railway up --detach
railway up --detach
