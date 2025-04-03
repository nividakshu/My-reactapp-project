#!/bin/bash
docker build -t nividaksha/prod:latest .
docker push nividaksha/prod:latest
