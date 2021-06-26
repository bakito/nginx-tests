FROM bitnami/nginx
EXPOSE 8080
COPY nginx.conf /opt/bitnami/nginx/conf/bitnami/
COPY index.html  /app
