# deploy.sh
#!/bin/bash

# Pull the latest image from Docker Hub
docker pull pechijarevluka/my-docker-app:latest

# Stop and remove existing container if it exists
docker stop my-docker-app || true
docker rm my-docker-app || true

# Run the new container
docker run -d -p 4500:4500 --name my-docker-app pechijarevluka/my-docker-app:latest

