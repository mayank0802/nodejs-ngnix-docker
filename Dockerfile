FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY . .
EXPOSE 80
CMD /bin/sh ./bin/docker-cmd.sh
