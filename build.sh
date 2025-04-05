#!/bin/bash

echo "Current Branch: $BRANCH_NAME"

if [ "$BRANCH_NAME" == "dev" ]; then
  docker build -t nividaksha/dev-react-image .
  echo "Nivetha@1234" | docker login -u "nividaksha" --password-stdin
  docker push nividaksha/dev-react-image:latest

elif [ "$BRANCH_NAME" == "main" ]; then
  docker build -t nividaksha/prod-react-image .
  echo "Nivetha@1234" | docker login -u "nividaksha" --password-stdin
  docker push nividaksha/prod-react-image:latest
fi

