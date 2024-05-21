#!/bin/bash

cd section-07-ci-and-publishing/house-prices-api

# Ensure RAILWAY_TOKEN is set
if [ -z "$RAILWAY_TOKEN" ]; then
  echo "RAILWAY_TOKEN is not set"
  exit 1
fi

# Make sure the expect script is executable
chmod +x ./deploy_railway.exp

# Run the expect script
expect ./deploy_railway.exp

# Run railway up --detach
railway up --detach
