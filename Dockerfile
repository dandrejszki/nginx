FROM nginx:alpine
COPY ./build /var/www
#WORKDIR /usr/share/nginx/html
# Remove default nginx static assets
#RUN rm -rf ./*
COPY nginx.conf /etc/nginx/nginx.conf
#COPY ./build .
EXPOSE 8080
ENTRYPOINT ["nginx","-g","daemon off;"]  