  
#version nodejs-10.9.0
#version nginx 1.15
FROM ubuntu:16.04
WORKDIR /app
COPY . .
