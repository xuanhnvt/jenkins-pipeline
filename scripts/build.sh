#!/bin/bash

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd src && docker-compose build --no-cache
