
docker pull pechijarevluka/my-docker-app:latest
docker stop my-docker-app || true
docker rm my-docker-app || true
docker run -d -p 4500:4500 --name my-docker-app pechijarevluka/my-docker-app:latest

