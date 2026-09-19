# Darwin AI Logo Studio - statikus kiszolgalas nginx-szel
# (az index.html a "Darwin Logo Studio.html" masolata; szokoz nelkuli nev kell a COPY-hoz)
FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html darwinai-logo-clean.svg README.md Simple.png Cross.png /usr/share/nginx/html/
EXPOSE 80
