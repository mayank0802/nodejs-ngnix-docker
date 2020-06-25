FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY . .
RUN npm install
COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
