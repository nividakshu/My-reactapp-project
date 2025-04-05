#!/bin/bash

echo "Deployment Branch: $BRANCH_NAME"

docker stop my-reactapp-container || true
docker rm my-reactapp-container || true

if [ "$BRANCH_NAME" == "dev" ]; then
  docker pull nividaksha/dev-react-image:latest
  docker run -d -p 80:80 --name my-reactapp-container nividaksha/dev-react-image:latest

elif [ "$BRANCH_NAME" == "main" ]; then
  docker pull nividaksha/prod-react-image:latest
  docker run -d -p 80:80 --name my-reactapp-container nividaksha/prod-react-image:latest
fi
