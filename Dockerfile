FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY . .
CMD /bin/sh ./bin/docker-cmd.sh
