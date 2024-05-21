#!/bin/bash

cd section-07-ci-and-publishing/house-prices-api

# 5ad7efcd-994e-4a79-bfb1-7af273b19170
# RAILWAY_TOKEN=${RAILWAY_TOKEN} railway run link
# Run railway link
expect -c '
spawn RAILWAY_TOKEN=${RAILWAY_TOKEN} railway link
expect "? Select a project"
send "house_api\r"  
expect "? Select an environment"
send "production\r"
'


# Run railway up --detach
railway up --detach
