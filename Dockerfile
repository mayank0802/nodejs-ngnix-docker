#Build Phase

FROM node:alpine AS builder
WORKDIR '/app'
COPY ./package.json ./
RUN npm install
COPY . .
RUN npm run build

#Run Phase
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html

# Copy the default nginx.conf provided by tiangolo/node-frontend
#COPY --from=build-stage /nginx.conf /etc/nginx/conf.d/default.conf
