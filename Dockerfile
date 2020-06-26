  
#version nodejs-10.9.0
#version nginx 1.15
FROM ubuntu:16.04
WORKDIR /app
COPY . .
#RUN apt-get install sudo

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get -y install python build-essential nodejs

# Install nodemon
RUN npm install -g nodemon
ADD package.json .
RUN npm install
RUN apt-get update \
    && apt-get install -y nginx
COPY config/nginx.default.conf /etc/nginx/nginx.conf
#COPY start.sh /
#CMD [ "/bin/sh", "/start.sh" ]
#RUN sudo systemctl restart nginx 
#CMD nginx -g daemon off
# && npm start
CMD ["nginx", "-g", "daemon off;"]
