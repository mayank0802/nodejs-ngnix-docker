  
#version nodejs-10.9.0
#version nginx 1.15
FROM ubuntu
WORKDIR /app
COPY . .
RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | sudo bash - && \
    apt-get -y install nodejs

# Install nodemon
RUN npm install -g nodemon
ADD package.json /tmp/package.json
RUN npm install
RUN apt-get update \
    && apt-get install -y nginx
COPY config/nginx.default.conf /etc/nginx/nginx.conf
RUN systemctl restart nginx 
CMD node index.js
