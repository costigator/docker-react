FROM node:alpine as builder
WORKDIR /app

# Install dependencies
COPY package*.json .
RUN npm install

# Copy the app (not needed if volume is mounted)
COPY . .

# build
RUN npm run build

# make a second container with the webserver
FROM nginx

# EXPOSE is used for elastic beanstalk
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html