FROM nginx:alpine

WORKDIR /usr/share/nginx/html/
COPY style.css ./
COPY index.html ./
