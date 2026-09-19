# Darwin AI Logo Studio - statikus kiszolgalas nginx-szel
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY "Darwin Logo Studio.html" /usr/share/nginx/html/index.html
COPY "Darwin Logo Studio.html" "/usr/share/nginx/html/Darwin Logo Studio.html"
COPY darwinai-logo-clean.svg README.md Simple.png Cross.png /usr/share/nginx/html/
EXPOSE 80
