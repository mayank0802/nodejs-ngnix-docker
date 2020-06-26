#version nodejs-10.9.0
#version nginx 1.15
FROM pasientskyhosting/nginx-nodejs
#FROM mhart/alpine-node:latest
#FROM mhart/alpine-node:12

#ARG NODE_ENV=production
#ENV $NODE_ENV

# lets install dependencies
WORKDIR /app
COPY ./package*.json ./app
RUN npm install
COPY . .
COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf
RUN apt-get install --only-upgrade nodejs
CMD service nginx start && node app.js
EXPOSE 3000
