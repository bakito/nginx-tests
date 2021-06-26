# https://catalog.redhat.com/software/containers/ubi8/nginx-118/5f521a6f9dd2d5ca7158e5dc
FROM registry.access.redhat.com/ubi8/nginx-118
EXPOSE 8080
COPY nginx.conf /opt/app-root/etc/nginx.default.d/
COPY index.html .

CMD nginx -g "daemon off;"