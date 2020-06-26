  
#version nodejs-10.9.0
#version nginx 1.15
FROM node:14.4.0-stretch
WORKDIR /app
COPY . .
RUN npm install
RUN yum install nginx
COPY nginx.conf /etc/nginx/nginx.conf
RUN service nginx restart
CMD node index.js
