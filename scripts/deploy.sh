#!/bin/bash

echo "Building Docker Image"
docker build -t apache-site:v1 .

echo "Stopping old container if running.."
docker stop apache-container 2>/dev/null || true
docker rm apache-container 2>/dev/null || true

echo "Running new container"
docker run -d --name apache-container -p 8081:80 apache-site:v1
