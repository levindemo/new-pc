#!/bin/env sh


docker login

docker pull nginx


docker run --name my-nginx -p 8080:80 -d nginx


curl http://localhost:8080