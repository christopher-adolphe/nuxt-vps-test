#!/bin/bash
set -e

echo "Deployment started..."

echo "Pulling latest changes from origin master..."
git pull origin master

echo "Installing dependencies..."
pnpm install

echo "Creating production build..."
pnpm run build

echo "Restarting application..."
pm2 reload 0

echo "Deployment finished. Application is up and running"

