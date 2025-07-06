#!/bin/bash

echo "🔄 Building Docker image..."
docker build -t devops-jovac-app .

echo "🚀 Stopping old container (if running)..."
docker rm -f devops-jovac-container || true

echo "🚢 Running Docker container..."
docker run -d -p 8080:80 --name devops-jovac-container devops-jovac-app

echo "✅ Deployed at: http://<your-ec2-ip>:8080"
