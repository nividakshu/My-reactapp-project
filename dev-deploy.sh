#!/bin/bash
docker pull nividaksha/dev:latest
docker stop my-reactapp-container || true
docker rm my-reactapp-container || true
docker run -d -p 80:80 --name my-reactapp-container nividaksha/dev:latest
