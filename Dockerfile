FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY ./package.json ./app
RUN npm install
COPY . .
COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf

#CMD ["node", "index.js"]
EXPOSE 80
