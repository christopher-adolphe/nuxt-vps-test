#!/bin/bash
set -e

echo "Deployment started..."

echo "Pulling latest changes from origin master..."
git pull origin master

echo "Installing dependencies..."
npm install --yes

echo "Creating production build..."
npm run build

echo "Restarting application..."
pm2 reload 0

echo "Deployment finished. Application is up and running"

