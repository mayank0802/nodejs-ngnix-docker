FROM ppdeassis/node-nginx-alpine:latest
# lets install dependencies
WORKDIR /app
COPY . .
COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf
RUN npm run build
EXPOSE 80
CMD npm start
