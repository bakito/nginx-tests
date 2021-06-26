FROM bitnami/nginx
EXPOSE 8080
# https://docs.nginx.com/nginx-waf/admin-guide/nginx-plus-modsecurity-waf-owasp-crs/#enabling-the-owasp-crs
RUN cd /tmp && \
    curl -L https://github.com/SpiderLabs/owasp-modsecurity-crs/archive/v3.0.2.tar.gz -o /tmp/owasp.tar.gz && \
    tar -xzvf /tmp/owasp.tar.gz
COPY nginx.conf /opt/bitnami/nginx/conf/bitnami/
COPY index.html  /app
