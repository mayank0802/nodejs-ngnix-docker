FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY . .
#COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
#CMD /bin/sh ./bin/docker-cmd.sh
