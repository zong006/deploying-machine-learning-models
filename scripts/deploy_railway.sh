#!/bin/bash


# Make sure the expect script is executable
chmod +x ./deploy_railway.exp

cd section-07-ci-and-publishing/house-prices-api

# Ensure RAILWAY_TOKEN is set
if [ -z "$RAILWAY_TOKEN" ]; then
  echo "RAILWAY_TOKEN is not set"
  exit 1
else
  echo "RAILWAY_TOKEN is set to: $RAILWAY_TOKEN"
fi

# Make sure the expect script is executable
chmod +x ../../scripts/deploy_railway.exp

# Run the expect script
expect ../../scripts/deploy_railway.exp

# Run railway up --detach
railway up --detach
