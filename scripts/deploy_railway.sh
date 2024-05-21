#!/bin/bash

cd section-07-ci-and-publishing/house-prices-api

# Run railway link
expect -c '
spawn railway link
expect "? Select a project"
send "house_api\r"  
expect "? Select an environment"
send "production\r"
'


# Run railway up --detach
railway up --detach
