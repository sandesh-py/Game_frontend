#!/bin/bash

# Game App Deployment Script for Render

echo "🚀 Starting deployment process..."

# Build backend
echo "📦 Building backend..."
cd backend
./mvnw clean package -DskipTests
if [ $? -ne 0 ]; then
    echo "❌ Backend build failed"
    exit 1
fi
cd ..

# Build frontend
echo "📦 Building frontend..."
cd client
npm install
npm run build
if [ $? -ne 0 ]; then
    echo "❌ Frontend build failed"
    exit 1
fi
cd ..

echo "✅ Build completed successfully!"
echo "🎯 Ready for deployment on Render"
