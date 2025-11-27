#!/bin/bash
# Website deployment script

set -e

echo "🚀 Deploying metaforgeverse.com..."

cd ~/tettra-project/website

# Pull latest changes
echo "📥 Pulling from GitHub..."
git pull origin main

# Restart NGINX to reload files
echo "♻️  Restarting NGINX..."
docker restart tettra_nginx

echo "✅ Deployment complete!"
echo "🌐 Check: https://metaforgeverse.com"
