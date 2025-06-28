#!/bin/env sh


docker login

docker pull nginx


docker rm -f test-nginx || echo "skip as no history container"
docker run --name test-nginx -p 8080:80 -d nginx


curl http://localhost:8080