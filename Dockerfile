## Stage 1 - Build Process
FROM node:13.8.0-alpine3.11 as build

WORKDIR /app
COPY package.json /app/package.json

RUN npm install --silent
#RUN npm install react-scripts -g

COPY . /app
RUN npm run build

## Stage 2 - Prod Environment
FROM nginx:1.17.8-alpine

COPY --from=build /app/build /var/www
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx","-g","daemon off;"]

