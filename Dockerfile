  
#version nodejs-10.9.0
#version nginx 1.15
FROM node:14.4.0-stretch
WORKDIR /app
COPY . .
RUN npm install
RUN apt-get install nginx
COPY config/nginx.default.conf /etc/nginx/nginx.conf
RUN systemctl restart nginx 
CMD node index.js
